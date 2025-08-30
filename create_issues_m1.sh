#!/bin/bash

# Create GitHub Issues for Milestone 1: Core Infrastructure Setup

echo "Creating Issues for Milestone 1..."

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
  --label "enhancement" --label "infrastructure" --label "high priority" \
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
  --label "feature" --label "authentication" --label "high priority" \
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
  --label "database" --label "infrastructure" --label "high priority" \
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
  --label "infrastructure" --label "devops" --label "medium priority" \
  --milestone "Core Infrastructure Setup"

echo "Milestone 1 issues created!"