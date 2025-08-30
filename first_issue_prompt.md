# Claude Code Development Session - Issue #1

## Initial Prompt for Claude Code:

```
I'm working on GitHub Issue #1: Project Setup and Architecture

Issue Details:
- Milestone: Core Infrastructure Setup (Due: March 31, 2025)
- Priority: HIGH
- Labels: enhancement, infrastructure, high priority
- Components: frontend, backend, infrastructure

Key Acceptance Criteria:
- Create Next.js 14+ app with TypeScript in frontend/ directory
- Set up FastAPI backend with proper folder structure in backend/ directory
- Configure Tailwind CSS and shadcn/ui with teal/green theme customization
- Set up development environment documentation
- Configure ESLint, Prettier, and pre-commit hooks for code quality
- Follow CLAUDE.md guidelines for project structure and coding standards

Technical Requirements:
- Node.js 18+, Python 3.9+
- Use our established teal/green color palette (teal-600 primary, green-600 success)
- Implement shadcn/ui component library with proper theme configuration
- Create proper TypeScript configurations for both frontend and backend
- Set up package.json scripts for common development tasks
- Create proper .gitignore files for both Node.js and Python

Project Structure Expected:
```
fll-mentor-platform/
├── frontend/              # Next.js 14+ with TypeScript
│   ├── src/
│   │   ├── app/          # App router structure
│   │   ├── components/   # Reusable components
│   │   ├── lib/         # Utility functions and configurations
│   │   └── types/       # TypeScript type definitions
│   ├── public/          # Static assets
│   ├── tailwind.config.js
│   ├── next.config.js
│   └── package.json
├── backend/              # Python FastAPI
│   ├── app/
│   │   ├── main.py      # FastAPI entry point
│   │   ├── models/      # Database models
│   │   ├── routers/     # API route handlers
│   │   ├── schemas/     # Pydantic schemas
│   │   └── utils/       # Utility functions
│   ├── requirements.txt
│   └── .env.example
├── database/            # Database related files
│   └── migrations/      # Future Supabase migrations
├── docs/               # Project documentation
├── .github/            # GitHub templates and workflows
├── CLAUDE.md           # Our existing project guidelines
├── README.md           # Project documentation
└── .gitignore          # Root gitignore
```

Please:
1. Create feature branch: feature/1-project-setup-architecture
2. Set up the complete project structure as outlined above
3. Configure Next.js 14+ with TypeScript, Tailwind CSS, and shadcn/ui
4. Customize the shadcn/ui theme to use our teal/green color palette
5. Set up FastAPI backend with proper Python project structure
6. Configure development tooling (ESLint, Prettier, pre-commit hooks)
7. Create necessary configuration files with proper settings
8. Test that both development servers can start successfully
9. Create initial documentation for getting started
10. Commit with proper issue reference: 'feat(setup): #1 initial project architecture and development environment'
11. Prepare for PR creation with "Closes #1" in description

Before starting implementation, please confirm you understand:
- Our teal/green design system requirements
- The need for shadcn/ui integration with custom theme
- Both frontend and backend local development setup
- Our coding standards and file organization from CLAUDE.md

Ready to start development on this foundational issue?
```

## Follow-up Commands for Claude Code Session:

After the initial setup, you can use these commands to verify everything is working:

```bash
# Test frontend setup
cd frontend && npm run dev
# Should start Next.js dev server at localhost:3000

# Test backend setup  
cd backend && uvicorn app.main:app --reload
# Should start FastAPI server at localhost:8000

# Test shadcn/ui theme
# Navigate to localhost:3000 and verify teal/green theming

# Test TypeScript
npm run type-check
# Should pass without errors

# Test linting
npm run lint
# Should pass or show fixable issues
```

## Expected Deliverables from This Session:

1. **Working Development Environment**: Both frontend and backend servers running
2. **Proper Project Structure**: All directories and files organized correctly
3. **Theme Configuration**: shadcn/ui properly configured with teal/green colors
4. **Development Tooling**: ESLint, Prettier, and other tools configured
5. **Documentation**: Updated README and setup instructions
6. **Git Integration**: Proper branch created with conventional commit messages

This sets the foundation for all subsequent issues in Milestone 1!