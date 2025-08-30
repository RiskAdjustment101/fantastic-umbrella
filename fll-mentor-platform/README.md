# FLL Discover Mentor Platform

A comprehensive platform for FIRST LEGO League Discover mentors to manage student pods, plan classes, track progress, and communicate with parents.

## 🎯 Project Overview

This platform is designed specifically for FLL Discover mentors working with students aged 6-10 years (grades K-4). It provides tools for pod management, class planning, progress tracking, and parent communication.

## 🛠 Tech Stack

- **Frontend**: Next.js 14+ with TypeScript, Tailwind CSS, shadcn/ui
- **Backend**: Python FastAPI with Pydantic
- **Database**: Supabase (PostgreSQL)
- **Authentication**: Clerk
- **Design System**: Teal and green color palette

## 🚀 Getting Started

### Prerequisites

- Node.js 18+ 
- Python 3.9+
- npm or yarn

### Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

The frontend will be available at http://localhost:3000

### Backend Setup

```bash
cd backend
pip install -r requirements.txt
uvicorn app.main:app --reload
```

The backend API will be available at http://localhost:8000

## 📁 Project Structure

```
fll-mentor-platform/
├── frontend/              # Next.js 14+ with TypeScript
│   ├── src/
│   │   ├── app/          # App router structure  
│   │   ├── components/   # Reusable components
│   │   ├── lib/         # Utility functions
│   │   └── types/       # TypeScript definitions
│   ├── public/          # Static assets
│   └── package.json
├── backend/              # Python FastAPI
│   ├── app/
│   │   ├── main.py      # FastAPI entry point
│   │   ├── models/      # Database models
│   │   ├── routers/     # API route handlers
│   │   ├── schemas/     # Pydantic schemas
│   │   └── utils/       # Utility functions
│   └── requirements.txt
├── database/            # Database migrations
├── docs/               # Documentation
├── .github/            # GitHub workflows
└── README.md
```

## 🎨 Design System

The platform uses a teal and green color palette:

- **Primary (Teal)**: Used for main actions, navigation, mentor-focused elements
- **Success (Green)**: Used for success states, student progress, positive feedback
- **shadcn/ui Components**: Consistent, accessible UI components

## 🔗 Development Commands

### Frontend
```bash
npm run dev          # Start development server
npm run build        # Build for production  
npm run type-check   # TypeScript checking
npm run lint         # ESLint
npm run format       # Prettier formatting
```

### Backend
```bash
uvicorn app.main:app --reload    # Start development server
python -m pytest                # Run tests  
python -m black .                # Format code
python -m mypy .                 # Type checking
```

## 🏗️ Core Features (Planned)

1. **Mentor Portal**: Dashboard with pod overview, upcoming classes
2. **Pod Management**: Individual pod pages with student roster and progress
3. **Class Planning**: Session planning aligned with FLL Discover curriculum  
4. **Parent Portal**: Child progress viewing and communication
5. **Notification System**: Automated reminders and updates

## 📊 Development Workflow

This project follows GitHub issue-driven development:

1. All work is tied to specific GitHub issues
2. Feature branches use format: `feature/{issue-number}-{description}`
3. Commits reference issues: `feat(component): #123 description`
4. Pull requests auto-close issues with "Closes #123"

## 🤝 Contributing

1. Reference GitHub issue numbers in all development work
2. Follow conventional commit format
3. Use TypeScript strict mode and proper type definitions
4. Follow the established design system and component patterns
5. Test both frontend and backend before submitting PRs

## 📄 License

This project is developed for educational purposes as part of the FLL Discover mentor program.

## 🔗 Links

- [FIRST LEGO League Discover](https://www.firstlegoleague.org/discover)
- [Next.js Documentation](https://nextjs.org/docs)
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [shadcn/ui Components](https://ui.shadcn.com/)