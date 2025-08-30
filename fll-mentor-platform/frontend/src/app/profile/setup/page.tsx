"use client";

import { useUser } from '@clerk/nextjs';
import { useRouter } from 'next/navigation';
import { useState } from 'react';
import { Button } from "@/components/ui/button";

export default function ProfileSetupPage() {
  const { user } = useUser();
  const router = useRouter();
  const [selectedRole, setSelectedRole] = useState<'mentor' | 'parent' | null>(null);
  const [isLoading, setIsLoading] = useState(false);

  const handleRoleSelection = async () => {
    if (!selectedRole || !user) return;

    setIsLoading(true);

    try {
      // Update user's public metadata with selected role
      await user.update({
        unsafeMetadata: {
          ...user.unsafeMetadata,
          role: selectedRole,
        },
      });

      // Redirect based on role
      if (selectedRole === 'mentor') {
        router.push('/dashboard/mentor');
      } else {
        router.push('/dashboard/parent');
      }
    } catch (error) {
      console.error('Error updating user role:', error);
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-background p-4">
      <div className="w-full max-w-md">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-foreground">
            Welcome to FLL Discover!
          </h1>
          <p className="text-muted-foreground mt-2">
            Let's set up your account. Please select your role:
          </p>
        </div>

        <div className="space-y-4">
          <div 
            className={`p-6 border rounded-lg cursor-pointer transition-colors ${
              selectedRole === 'mentor'
                ? 'border-primary bg-primary/10' 
                : 'border-border hover:border-primary/50'
            }`}
            onClick={() => setSelectedRole('mentor')}
          >
            <div className="flex items-center space-x-3">
              <div className={`w-4 h-4 rounded-full border-2 ${
                selectedRole === 'mentor' 
                  ? 'bg-primary border-primary' 
                  : 'border-border'
              }`} />
              <div>
                <h3 className="font-semibold text-card-foreground">I'm a Mentor</h3>
                <p className="text-sm text-muted-foreground">
                  I guide and teach FLL Discover students
                </p>
              </div>
            </div>
          </div>

          <div 
            className={`p-6 border rounded-lg cursor-pointer transition-colors ${
              selectedRole === 'parent'
                ? 'border-primary bg-primary/10' 
                : 'border-border hover:border-primary/50'
            }`}
            onClick={() => setSelectedRole('parent')}
          >
            <div className="flex items-center space-x-3">
              <div className={`w-4 h-4 rounded-full border-2 ${
                selectedRole === 'parent' 
                  ? 'bg-primary border-primary' 
                  : 'border-border'
              }`} />
              <div>
                <h3 className="font-semibold text-card-foreground">I'm a Parent</h3>
                <p className="text-sm text-muted-foreground">
                  I want to track my child's progress
                </p>
              </div>
            </div>
          </div>
        </div>

        <Button 
          className="w-full mt-8" 
          onClick={handleRoleSelection}
          disabled={!selectedRole || isLoading}
        >
          {isLoading ? 'Setting up...' : 'Continue'}
        </Button>
      </div>
    </div>
  );
}