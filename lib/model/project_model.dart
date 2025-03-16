class Project {
  final String name;
  final String description;
  final List<String> image;
  final String link;
  final List<String> skills;
  Project(
    this.name,
    this.description,
    this.image,
    this.link,
    this.skills,
  );
}

List<Project> projectList = [
  Project(
    "Behavioral Intelligence Quotient",
    "Many individuals struggle to find a structured, engaging way to incorporate mindfulness into their daily routines. Without a dedicated platform, users often miss out on guided meditation, mental wellness tracking, and essential self-care tools.To bridge this gap, I developed a fully responsive Meditation & Wellness Web App designed to help users cultivate mindfulness, improve mental clarity, and enhance their overall well-being.",
    [
      'assets/images/biq images/Screenshot 2025-02-11 123748.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 123933.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124011.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124047.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124209.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124250.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124407.jpg',
      'assets/images/biq images/Screenshot 2025-02-11 124500.jpg',
      'assets/images/biq images/Screenshot 2025-02-20 124246.jpg',
    ],
    "https://app.mybiq.com/",
    [
      'Hive',
      'Swagger',
      'Stripe',
    ],
  ),
];
