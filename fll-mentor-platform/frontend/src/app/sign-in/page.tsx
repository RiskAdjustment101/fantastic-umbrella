import { SignIn } from '@clerk/nextjs';

export default function SignInPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-background p-4">
      <div className="w-full max-w-md">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-foreground">
            FLL Discover Mentor Platform
          </h1>
          <p className="text-muted-foreground mt-2">
            Sign in to your account
          </p>
        </div>
        
        <SignIn 
          appearance={{
            elements: {
              formButtonPrimary: 
                "bg-primary hover:bg-primary/90 text-primary-foreground",
              card: "bg-card border border-border shadow-lg",
              headerTitle: "text-card-foreground",
              headerSubtitle: "text-muted-foreground",
              socialButtonsIconButton: 
                "border-border hover:bg-accent hover:text-accent-foreground",
              formFieldInput: 
                "border-border bg-background text-foreground",
              footerActionLink: "text-primary hover:text-primary/80"
            }
          }}
          redirectUrl="/dashboard"
        />
      </div>
    </div>
  );
}