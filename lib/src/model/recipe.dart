
class Recipe {
  final String title;
  final String subtitle;
  final String image;
  final int rating;
  final String reviews;

  Recipe({required this.title, required this.subtitle, required this.image, required this.rating, required this.reviews});

  static List<Recipe> demoData() {
    List<Recipe> recipes = <Recipe>[
      Recipe(title: "Weekend Sushi", subtitle: "10 sushi ideas", image: "https://images.unsplash.com/photo-1580822184713-fc5400e7fe10?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80", rating: 3, reviews: "1.5K"),
      Recipe(title: "Fresh salad", subtitle: "15 salad ideas", image: "https://images.unsplash.com/photo-1625248442085-10a1a2563dd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80", rating: 4, reviews: "3.2K"),
      Recipe(title: "Grilled chicken", subtitle: "5 grilled ideas", image: "https://images.unsplash.com/photo-1592011432621-f7f576f44484?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80", rating: 5, reviews: "4.9K"),
      Recipe(title: "Sweet Day", subtitle: "20 dessert ideas", image: "https://images.unsplash.com/photo-1612078960206-1709f1f0c969?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80", rating: 1, reviews: "1.0K"),
    ];

    recipes.shuffle();
    return recipes;
  }
}