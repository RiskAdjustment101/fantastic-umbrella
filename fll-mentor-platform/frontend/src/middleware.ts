import { clerkMiddleware, createRouteMatcher } from '@clerk/nextjs/server'

// Define public routes that don't require authentication
const isPublicRoute = createRouteMatcher([
  '/',
  '/sign-in(.*)',
  '/sign-up(.*)',
  '/api/webhooks(.*)',
])

// Define mentor-only routes
const isMentorRoute = createRouteMatcher([
  '/dashboard/mentor(.*)',
  '/pods(.*)',
  '/sessions(.*)',
  '/analytics(.*)',
])

// Define parent-only routes
const isParentRoute = createRouteMatcher([
  '/dashboard/parent(.*)',
  '/child(.*)',
  '/messages(.*)',
])

export default clerkMiddleware(async (auth, req) => {
  // Allow public routes
  if (isPublicRoute(req)) return

  // Require authentication for all other routes
  const authResult = await auth()
  const { userId, sessionClaims } = authResult
  
  if (!userId) {
    // Redirect to sign-in if not authenticated
    return authResult.redirectToSignIn()
  }

  // Get user role from unsafe metadata (for development)
  const role = (sessionClaims?.unsafeMetadata as any)?.role as string

  // Check role-based access
  if (isMentorRoute(req) && role !== 'mentor') {
    return new Response('Access denied', { status: 403 })
  }

  if (isParentRoute(req) && role !== 'parent') {
    return new Response('Access denied', { status: 403 })
  }
})

export const config = {
  matcher: [
    // Skip Next.js internals and all static files, unless found in search params
    '/((?!_next|[^?]*\\.(?:html?|css|js(?!on)|jpe?g|webp|png|gif|svg|ttf|woff2?|ico|csv|docx?|xlsx?|zip|webmanifest)).*)',
    // Always run for API routes
    '/(api|trpc)(.*)',
  ],
}