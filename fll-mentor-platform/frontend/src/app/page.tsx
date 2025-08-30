import { Button } from "@/components/ui/button";

export default function Home() {
  return (
    <div className="min-h-screen bg-background p-8">
      <main className="container mx-auto max-w-4xl">
        <div className="text-center space-y-8">
          <div className="space-y-4">
            <h1 className="text-4xl font-bold text-foreground">
              FLL Discover Mentor Platform
            </h1>
            <p className="text-xl text-muted-foreground">
              Empowering mentors to guide young learners in FIRST LEGO League Discover
            </p>
          </div>
          
          <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
            <Button className="bg-primary text-primary-foreground hover:bg-primary/90">
              Get Started
            </Button>
            <Button variant="outline" className="border-primary text-primary hover:bg-primary/10">
              Learn More
            </Button>
            <Button variant="secondary" className="bg-green-600 text-white hover:bg-green-700">
              Success Button (Green)
            </Button>
          </div>

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
