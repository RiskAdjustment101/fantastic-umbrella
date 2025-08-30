"""
Authentication utilities for Clerk integration
"""

import os
import httpx
from jose import jwt, JWTError
from fastapi import HTTPException, status, Depends
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from typing import Optional, Dict, Any

# Clerk configuration
CLERK_SECRET_KEY = os.getenv("CLERK_SECRET_KEY")
CLERK_JWT_KEY = os.getenv("CLERK_JWT_KEY", "")

security = HTTPBearer()

class AuthUser:
    """Represents an authenticated user"""
    def __init__(self, user_id: str, email: str, role: Optional[str] = None):
        self.user_id = user_id
        self.email = email
        self.role = role

async def verify_clerk_token(token: str) -> Dict[str, Any]:
    """
    Verify Clerk JWT token and return user data
    """
    try:
        # In a real implementation, you'd fetch the JWKS from Clerk
        # For now, we'll validate basic structure
        if not token:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="No token provided"
            )
        
        # Decode without verification for development
        # In production, use proper JWT verification with Clerk's public key
        try:
            payload = jwt.decode(token, options={"verify_signature": False})
            return payload
        except JWTError:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Invalid token"
            )
            
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail=f"Token verification failed: {str(e)}"
        )

async def get_current_user(credentials: HTTPAuthorizationCredentials = Depends(security)) -> AuthUser:
    """
    Dependency to get current authenticated user
    """
    try:
        token = credentials.credentials
        payload = await verify_clerk_token(token)
        
        user_id = payload.get("sub")
        email = payload.get("email")
        role = payload.get("public_metadata", {}).get("role")
        
        if not user_id:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Invalid token payload"
            )
        
        return AuthUser(user_id=user_id, email=email, role=role)
        
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail=f"Authentication failed: {str(e)}"
        )

async def get_mentor_user(current_user: AuthUser = Depends(get_current_user)) -> AuthUser:
    """
    Dependency to ensure user is a mentor
    """
    if current_user.role != "mentor":
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Mentor access required"
        )
    return current_user

async def get_parent_user(current_user: AuthUser = Depends(get_current_user)) -> AuthUser:
    """
    Dependency to ensure user is a parent
    """
    if current_user.role != "parent":
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Parent access required"
        )
    return current_user