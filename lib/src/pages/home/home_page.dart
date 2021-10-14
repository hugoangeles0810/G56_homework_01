import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/model/recipe.dart';

import 'package:g56_homework_01/src/widgets/recipe_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final _items = Recipe.demoData();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => RecipeCardWidget(recipe: _items[index]),
        itemCount: _items.length,
        padding: const EdgeInsets.all(20.0),
      ),
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
