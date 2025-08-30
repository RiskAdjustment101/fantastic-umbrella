"use client";

import { useUser } from '@clerk/nextjs';
import { useRouter } from 'next/navigation';
import { useEffect } from 'react';

export default function DashboardPage() {
  const { user, isLoaded } = useUser();
  const router = useRouter();

  useEffect(() => {
    if (isLoaded && user) {
      const role = user.publicMetadata?.role as string;

      if (!role) {
        // User hasn't selected a role yet
        router.push('/profile/setup');
      } else if (role === 'mentor') {
        router.push('/dashboard/mentor');
      } else if (role === 'parent') {
        router.push('/dashboard/parent');
      }
    }
  }, [isLoaded, user, router]);

  return (
    <div className="min-h-screen flex items-center justify-center bg-background">
      <div className="text-center">
        <h1 className="text-xl font-semibold text-foreground">
          Loading your dashboard...
        </h1>
      </div>
    </div>
  );
}