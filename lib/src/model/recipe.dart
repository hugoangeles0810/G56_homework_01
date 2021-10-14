
class Recipe {
  final String title;
  final String subtitle;
  final String image;

  Recipe({required this.title, required this.subtitle, required this.image});

  static List<Recipe> demoData() {
    return <Recipe>[
      Recipe(title: "Weekend Sushi", subtitle: "10 sushi ideas", image: "https://images.unsplash.com/photo-1580822184713-fc5400e7fe10?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
      Recipe(title: "Fresh salad", subtitle: "15 salad ideas", image: "https://images.unsplash.com/photo-1625248442085-10a1a2563dd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
      Recipe(title: "Grilled chicken", subtitle: "5 grilled ideas", image: "https://images.unsplash.com/photo-1592011432621-f7f576f44484?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80"),
      Recipe(title: "Sweet Day", subtitle: "20 dessert ideas", image: "https://images.unsplash.com/photo-1612078960206-1709f1f0c969?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
    ];
  }
}