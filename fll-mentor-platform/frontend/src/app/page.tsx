"use client";

import { Button } from "@/components/ui/button";
import { SignedIn, SignedOut, UserButton, useUser } from '@clerk/nextjs';
import Link from 'next/link';

export default function Home() {
  const { user } = useUser();

  return (
    <div className="min-h-screen bg-background">
      <header className="border-b border-border p-4">
        <div className="container mx-auto flex justify-between items-center">
          <h2 className="text-xl font-bold text-foreground">
            FLL Discover Mentor Platform
          </h2>
          <div className="flex items-center space-x-4">
            <SignedIn>
              <span className="text-sm text-muted-foreground">
                Welcome, {user?.firstName}!
              </span>
              <Link href="/dashboard">
                <Button variant="outline" size="sm">Dashboard</Button>
              </Link>
              <UserButton />
            </SignedIn>
            <SignedOut>
              <Link href="/sign-in">
                <Button variant="outline" size="sm">Sign In</Button>
              </Link>
              <Link href="/sign-up">
                <Button size="sm">Sign Up</Button>
              </Link>
            </SignedOut>
          </div>
        </div>
      </header>

      <main className="container mx-auto max-w-4xl p-8">
        <div className="text-center space-y-8">
          <div className="space-y-4">
            <h1 className="text-4xl font-bold text-foreground">
              FLL Discover Mentor Platform
            </h1>
            <p className="text-xl text-muted-foreground">
              Empowering mentors to guide young learners in FIRST LEGO League Discover
            </p>
          </div>
          
          <SignedOut>
            <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
              <Link href="/sign-up">
                <Button className="bg-primary text-primary-foreground hover:bg-primary/90">
                  Get Started
                </Button>
              </Link>
              <Link href="/sign-in">
                <Button variant="outline" className="border-primary text-primary hover:bg-primary/10">
                  Sign In
                </Button>
              </Link>
            </div>
          </SignedOut>

          <SignedIn>
            <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
              <Link href="/dashboard">
                <Button className="bg-primary text-primary-foreground hover:bg-primary/90">
                  Go to Dashboard
                </Button>
              </Link>
            </div>
          </SignedIn>

          <div className="grid md:grid-cols-3 gap-6 mt-12">
            <div className="p-6 border border-border rounded-lg bg-card">
              <h3 className="text-lg font-semibold text-card-foreground mb-2">Pod Management</h3>
              <p className="text-muted-foreground">Easily manage student pods and track progress</p>
            </div>
            <div className="p-6 border border-border rounded-lg bg-card">
              <h3 className="text-lg font-semibold text-card-foreground mb-2">Session Planning</h3>
              <p className="text-muted-foreground">Plan engaging STEM activities and lessons</p>
            </div>
            <div className="p-6 border border-border rounded-lg bg-card">
              <h3 className="text-lg font-semibold text-card-foreground mb-2">Parent Communication</h3>
              <p className="text-muted-foreground">Keep parents informed of student progress</p>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
