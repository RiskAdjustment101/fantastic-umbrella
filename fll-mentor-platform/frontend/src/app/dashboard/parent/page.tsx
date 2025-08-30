"use client";

import { UserButton, useUser } from '@clerk/nextjs';
import { Button } from "@/components/ui/button";

export default function ParentDashboardPage() {
  const { user } = useUser();

  return (
    <div className="min-h-screen bg-background">
      <header className="border-b border-border">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <h1 className="text-2xl font-bold text-foreground">
            Parent Dashboard
          </h1>
          <div className="flex items-center space-x-4">
            <span className="text-sm text-muted-foreground">
              Welcome, {user?.firstName}!
            </span>
            <UserButton 
              appearance={{
                elements: {
                  avatarBox: "w-8 h-8"
                }
              }}
            />
          </div>
        </div>
      </header>

      <main className="container mx-auto px-4 py-8">
        <div className="grid md:grid-cols-3 gap-6 mb-8">
          <div className="p-6 border border-border rounded-lg bg-card">
            <h3 className="text-lg font-semibold text-card-foreground mb-2">
              My Child's Pod
            </h3>
            <p className="text-lg font-medium text-primary">Not assigned</p>
            <p className="text-sm text-muted-foreground">Current placement</p>
          </div>
          
          <div className="p-6 border border-border rounded-lg bg-card">
            <h3 className="text-lg font-semibold text-card-foreground mb-2">
              Next Class
            </h3>
            <p className="text-lg font-medium text-green-600">TBD</p>
            <p className="text-sm text-muted-foreground">Schedule pending</p>
          </div>

          <div className="p-6 border border-border rounded-lg bg-card">
            <h3 className="text-lg font-semibold text-card-foreground mb-2">
              Learning Progress
            </h3>
            <p className="text-3xl font-bold text-primary">0%</p>
            <p className="text-sm text-muted-foreground">Skills completed</p>
          </div>
        </div>

        <div className="space-y-6">
          <div>
            <h2 className="text-xl font-semibold text-foreground mb-4">
              Quick Actions
            </h2>
            <div className="flex flex-wrap gap-4">
              <Button className="bg-primary text-primary-foreground">
                Contact Mentor
              </Button>
              <Button variant="outline">
                View Schedule
              </Button>
              <Button variant="secondary" className="bg-green-600 text-white hover:bg-green-700">
                Child's Progress
              </Button>
            </div>
          </div>

          <div>
            <h2 className="text-xl font-semibold text-foreground mb-4">
              Recent Updates
            </h2>
            <div className="p-6 border border-border rounded-lg bg-card">
              <p className="text-muted-foreground text-center py-8">
                No updates yet. Your child's mentor will share progress updates here.
              </p>
            </div>
          </div>

          <div>
            <h2 className="text-xl font-semibold text-foreground mb-4">
              Learning Journey
            </h2>
            <div className="p-6 border border-border rounded-lg bg-card">
              <p className="text-muted-foreground text-center py-8">
                Your child's FLL Discover learning journey will be tracked here.
              </p>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}