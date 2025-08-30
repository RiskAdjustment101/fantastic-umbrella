#!/bin/bash

# Create GitHub Issues for FLL Discover Mentor Platform

echo "Creating Issues for all Milestones..."

# ====== MILESTONE 1: Core Infrastructure Setup ======

# Issue #1: Project Setup and Architecture
gh issue create \
  --title "Project Setup and Architecture" \
  --body "## Description
Set up the initial project structure with Next.js frontend and FastAPI backend

## Acceptance Criteria
- [ ] Create Next.js 14+ app with TypeScript
- [ ] Set up FastAPI backend with proper folder structure
- [ ] Configure Tailwind CSS and shadcn/ui with teal/green theme
- [ ] Set up development environment documentation
- [ ] Configure ESLint, Prettier, and pre-commit hooks

## Technical Requirements
- Node.js 18+, Python 3.9+
- Follow CLAUDE.md guidelines for project structure" \
  --label "enhancement,infrastructure,high priority" \
  --milestone "Core Infrastructure Setup"

# Issue #2: Authentication System with Clerk
gh issue create \
  --title "Authentication System with Clerk" \
  --body "## Description
Implement multi-role authentication system using Clerk

## Acceptance Criteria
- [ ] Set up Clerk authentication for Next.js
- [ ] Configure mentor and parent roles
- [ ] Create protected routes and middleware
- [ ] Implement user profile management
- [ ] Set up authentication for FastAPI backend

## User Stories
- As a mentor, I can sign up and log in securely
- As a parent, I can create an account and access my child's information" \
  --label "feature,authentication,high priority" \
  --milestone "Core Infrastructure Setup"

# Issue #3: Database Schema and Supabase Setup
gh issue create \
  --title "Database Schema and Supabase Setup" \
  --body "## Description
Design and implement the core database schema using Supabase

## Acceptance Criteria
- [ ] Create Supabase project and configure connection
- [ ] Design database schema for users, mentors, parents, students, pods, sessions
- [ ] Implement Row Level Security (RLS) policies
- [ ] Create database migrations
- [ ] Set up TypeScript type generation from schema

## Technical Requirements
- PostgreSQL with Supabase
- Proper foreign key relationships
- Secure RLS policies for data isolation" \
  --label "database,infrastructure,high priority" \
  --milestone "Core Infrastructure Setup"

# Issue #4: CI/CD Pipeline Setup
gh issue create \
  --title "CI/CD Pipeline Setup" \
  --body "## Description
Set up continuous integration and deployment pipeline

## Acceptance Criteria
- [ ] Configure GitHub Actions for testing
- [ ] Set up automated TypeScript checking
- [ ] Configure Python linting and testing
- [ ] Set up preview deployments
- [ ] Create deployment documentation

## Technical Requirements
- GitHub Actions workflow
- Automated testing on pull requests
- Environment variable management" \
  --label "infrastructure,devops,medium priority" \
  --milestone "Core Infrastructure Setup"

# ====== MILESTONE 2: Mentor Portal MVP ======

# Issue #5: Mentor Dashboard
gh issue create \
  --title "Mentor Dashboard" \
  --body "## Description
Create the main dashboard for mentors to overview their pods and activities

## Acceptance Criteria
- [ ] Display mentor's assigned student pods as cards
- [ ] Show upcoming classes and schedule
- [ ] Display pending tasks and notifications
- [ ] Implement responsive design with teal/green theme
- [ ] Use shadcn/ui Card and Badge components

## User Stories
- As a mentor, I can see all my student pods at a glance
- As a mentor, I can quickly access my upcoming classes
- As a mentor, I can view my pending tasks and todos" \
  --label "feature,frontend,mentor,high priority" \
  --milestone "Mentor Portal MVP"

# Issue #6: Student Pod Management
gh issue create \
  --title "Student Pod Management" \
  --body "## Description
Implement pod creation, student roster management, and basic pod information

## Acceptance Criteria
- [ ] Create new student pods with basic information
- [ ] Add/remove students from pods
- [ ] Edit student information and contact details
- [ ] Display pod roster with student progress indicators
- [ ] Implement pod settings and configuration

## API Endpoints Needed
- POST /api/pods - Create new pod
- GET /api/pods/{id}/students - Get pod roster
- POST /api/pods/{id}/students - Add student to pod
- DELETE /api/pods/{pod_id}/students/{student_id} - Remove student" \
  --label "feature,frontend,backend,mentor,high priority" \
  --milestone "Mentor Portal MVP"

# Issue #7: Class Session Planning Interface
gh issue create \
  --title "Class Session Planning Interface" \
  --body "## Description
Build interface for mentors to plan and schedule class sessions

## Acceptance Criteria
- [ ] Create new class sessions with date, time, objectives
- [ ] Select activities and materials needed
- [ ] Set learning objectives aligned with FLL Discover curriculum
- [ ] Save session plans for reuse
- [ ] View session history and outcomes

## User Stories
- As a mentor, I can create detailed session plans
- As a mentor, I can reuse successful session templates
- As a mentor, I can track what activities work best" \
  --label "feature,frontend,backend,mentor,high priority" \
  --milestone "Mentor Portal MVP"

# Issue #8: Basic Progress Tracking
gh issue create \
  --title "Basic Progress Tracking" \
  --body "## Description
Implement student progress tracking for core FLL Discover competencies

## Acceptance Criteria
- [ ] Define FLL Discover skill competencies in database
- [ ] Create progress tracking interface for individual students
- [ ] Display progress indicators using badges and progress bars
- [ ] Allow mentors to mark competency achievements
- [ ] Generate basic progress reports

## Technical Requirements
- Competency-based tracking (not time-based)
- Visual progress indicators using shadcn/ui components" \
  --label "feature,frontend,backend,mentor,medium priority" \
  --milestone "Mentor Portal MVP"

# ====== MILESTONE 3: Parent Portal and Communications ======

# Issue #9: Parent Dashboard and Child Progress View
gh issue create \
  --title "Parent Dashboard and Child Progress View" \
  --body "## Description
Create parent dashboard to view their child's progress and class information

## Acceptance Criteria
- [ ] Display child's current pod and mentor information
- [ ] Show recent class sessions and activities
- [ ] Display progress on FLL Discover competencies
- [ ] Show upcoming classes and schedule
- [ ] Provide class location and contact information

## User Stories
- As a parent, I can see how my child is progressing in their FLL program
- As a parent, I can view upcoming class schedules and locations
- As a parent, I can contact my child's mentor easily" \
  --label "feature,frontend,parent,high priority" \
  --milestone "Parent Portal and Communications"

# Issue #10: Communication System
gh issue create \
  --title "Communication System" \
  --body "## Description
Implement two-way messaging between mentors and parents

## Acceptance Criteria
- [ ] Create messaging interface for mentor-parent communication
- [ ] Implement real-time message notifications
- [ ] Allow file and photo sharing
- [ ] Create message history and threading
- [ ] Implement message status indicators (read/unread)

## Technical Requirements
- Real-time messaging (WebSocket or polling)
- File upload capabilities
- Message encryption for privacy" \
  --label "feature,frontend,backend,communication,high priority" \
  --milestone "Parent Portal and Communications"

# Issue #11: Notification System
gh issue create \
  --title "Notification System" \
  --body "## Description
Build automated notification system for classes, schedule changes, and updates

## Acceptance Criteria
- [ ] Send class reminder notifications (email/SMS)
- [ ] Notify about schedule changes or cancellations
- [ ] Send progress milestone notifications to parents
- [ ] Allow users to configure notification preferences
- [ ] Track notification delivery and engagement

## Notification Types
- Class reminders (24h and 1h before)
- Schedule changes
- Progress achievements
- New messages
- Absence alerts" \
  --label "feature,backend,communication,high priority" \
  --milestone "Parent Portal and Communications"

# Issue #12: Mobile Responsiveness and PWA
gh issue create \
  --title "Mobile Responsiveness and PWA" \
  --body "## Description
Optimize platform for mobile usage and implement PWA features

## Acceptance Criteria
- [ ] Responsive design for all major screens (mobile, tablet, desktop)
- [ ] Implement Progressive Web App (PWA) features
- [ ] Add offline capability for basic viewing
- [ ] Optimize touch interactions and navigation
- [ ] Test across iOS Safari, Android Chrome

## Technical Requirements
- PWA manifest and service worker
- Mobile-first responsive design
- Touch-friendly UI elements" \
  --label "enhancement,frontend,mobile,medium priority" \
  --milestone "Parent Portal and Communications"

# ====== MILESTONE 4: Advanced Features and Analytics ======

# Issue #13: Advanced Session Planning with Templates
gh issue create \
  --title "Advanced Session Planning with Templates" \
  --body "## Description
Enhanced session planning with reusable templates and curriculum alignment

## Acceptance Criteria
- [ ] Create session plan templates library
- [ ] Align activities with FLL Discover curriculum standards
- [ ] Implement session plan sharing between mentors
- [ ] Add session outcome tracking and reflection
- [ ] Create seasonal/themed session collections

## User Stories
- As a mentor, I can use proven session templates
- As a mentor, I can share successful sessions with other mentors
- As a mentor, I can track which activities are most effective" \
  --label "feature,mentor,enhancement,medium priority" \
  --milestone "Advanced Features and Analytics"

# Issue #14: Analytics Dashboard for Mentors
gh issue create \
  --title "Analytics Dashboard for Mentors" \
  --body "## Description
Provide mentors with insights about their students' progress and engagement

## Acceptance Criteria
- [ ] Student engagement and attendance analytics
- [ ] Progress tracking over time with visualizations
- [ ] Session effectiveness metrics
- [ ] Individual student learning trajectory analysis
- [ ] Comparative pod performance insights

## Technical Requirements
- Charts and graphs using React visualization library
- Data aggregation and analysis functions
- Export capabilities for reports" \
  --label "feature,analytics,mentor,medium priority" \
  --milestone "Advanced Features and Analytics"

# Issue #15: AI-Assisted Session Planning (Phase 1)
gh issue create \
  --title "AI-Assisted Session Planning (Phase 1)" \
  --body "## Description
Initial AI integration for session planning assistance

## Acceptance Criteria
- [ ] AI suggestions for activities based on student progress
- [ ] Automated session plan generation from objectives
- [ ] Intelligent resource recommendations
- [ ] Natural language session note processing
- [ ] Integration with OpenAI API or similar

## Technical Requirements
- LLM integration (OpenAI, Claude, etc.)
- Prompt engineering for educational content
- Cost management and rate limiting" \
  --label "feature,ai,mentor,enhancement,low priority" \
  --milestone "Advanced Features and Analytics"

# ====== MILESTONE 5: Platform Optimization and Scale Prep ======

# Issue #16: Performance Optimization
gh issue create \
  --title "Performance Optimization" \
  --body "## Description
Optimize platform performance for larger user base

## Acceptance Criteria
- [ ] Implement caching strategies (Redis/memory cache)
- [ ] Optimize database queries and add indexes
- [ ] Implement lazy loading for large datasets
- [ ] Add performance monitoring and alerting
- [ ] Optimize bundle sizes and loading times

## Performance Targets
- Page load times < 2 seconds
- API response times < 500ms
- Support 100+ concurrent users" \
  --label "performance,infrastructure,optimization,medium priority" \
  --milestone "Platform Optimization and Scale Prep"

# Issue #17: Security and Compliance Hardening
gh issue create \
  --title "Security and Compliance Hardening" \
  --body "## Description
Ensure platform meets security standards and COPPA compliance for student data

## Acceptance Criteria
- [ ] Complete security audit and penetration testing
- [ ] Implement COPPA compliance measures
- [ ] Add data encryption at rest and in transit
- [ ] Create privacy policy and terms of service
- [ ] Implement audit logging for sensitive operations

## Compliance Requirements
- COPPA compliance for students under 13
- GDPR considerations for data handling
- Educational data privacy standards" \
  --label "security,compliance,infrastructure,high priority" \
  --milestone "Platform Optimization and Scale Prep"

# Issue #18: Multi-Organization Support
gh issue create \
  --title "Multi-Organization Support" \
  --body "## Description
Enable multiple organizations/schools to use the platform independently

## Acceptance Criteria
- [ ] Multi-tenant architecture with data isolation
- [ ] Organization admin roles and permissions
- [ ] Customizable branding per organization
- [ ] Organization-specific settings and configurations
- [ ] Bulk user management tools

## Technical Requirements
- Row-level security for multi-tenancy
- Organization-scoped data queries
- Admin dashboard for organization management" \
  --label "feature,architecture,scalability,low priority" \
  --milestone "Platform Optimization and Scale Prep"

echo "All issues created successfully!"