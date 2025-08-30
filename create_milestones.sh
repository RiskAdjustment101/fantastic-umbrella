#!/bin/bash

# Create GitHub Milestones for FLL Discover Mentor Platform

echo "Creating Milestones..."

# Milestone 1: Core Infrastructure Setup
gh milestone create \
  --title "Core Infrastructure Setup" \
  --description "Establish the foundational architecture, authentication, and database infrastructure needed for the platform." \
  --due-on 2025-03-31

# Milestone 2: Mentor Portal MVP
gh milestone create \
  --title "Mentor Portal MVP" \
  --description "Develop core mentor functionality including pod management, student tracking, and basic class planning." \
  --due-on 2025-05-15

# Milestone 3: Parent Portal and Communications
gh milestone create \
  --title "Parent Portal and Communications" \
  --description "Develop parent-facing features including progress viewing, communication tools, and notification system." \
  --due-on 2025-07-30

# Milestone 4: Advanced Features and Analytics
gh milestone create \
  --title "Advanced Features and Analytics" \
  --description "Implement advanced mentor tools, analytics dashboard, and platform optimizations." \
  --due-on 2025-10-15

# Milestone 5: Platform Optimization and Scale Prep
gh milestone create \
  --title "Platform Optimization and Scale Prep" \
  --description "Performance optimization, security hardening, and preparation for broader adoption." \
  --due-on 2025-12-31

echo "Milestones created successfully!"
