"""
Authentication routes
"""

from fastapi import APIRouter, Depends
from ..utils.auth import AuthUser, get_current_user, get_mentor_user, get_parent_user

router = APIRouter(prefix="/api/auth", tags=["authentication"])

@router.get("/me")
async def get_current_user_info(current_user: AuthUser = Depends(get_current_user)):
    """
    Get current authenticated user information
    """
    return {
        "user_id": current_user.user_id,
        "email": current_user.email,
        "role": current_user.role
    }

@router.get("/mentor/profile")
async def get_mentor_profile(mentor: AuthUser = Depends(get_mentor_user)):
    """
    Get mentor profile (requires mentor role)
    """
    return {
        "user_id": mentor.user_id,
        "email": mentor.email,
        "role": mentor.role,
        "access_level": "mentor",
        "permissions": ["manage_pods", "plan_sessions", "track_progress"]
    }

@router.get("/parent/profile")
async def get_parent_profile(parent: AuthUser = Depends(get_parent_user)):
    """
    Get parent profile (requires parent role)
    """
    return {
        "user_id": parent.user_id,
        "email": parent.email,
        "role": parent.role,
        "access_level": "parent",
        "permissions": ["view_child_progress", "contact_mentor", "view_schedule"]
    }