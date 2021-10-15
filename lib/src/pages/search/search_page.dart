import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:g56_homework_01/src/model/recipe.dart';
import 'package:g56_homework_01/src/widgets/most_liked_recipe_widget.dart';
import 'package:g56_homework_01/src/widgets/popular_recipe_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const _sectionTitle =
      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  static const _texfieldStyle = TextStyle(color: Color(0xFFACABB1), fontSize: 14.0);

  static final _likedItems = Recipe.demoData();
  static final _popularItems = Recipe.demoData();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchTexfield(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Most Liked Recipes", style: _sectionTitle),
          ),
          _mostLikedRecipes(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Popular Recipes", style: _sectionTitle),
          ),
          _popularRecipes()
        ],
      ),
    );
  }

  Widget _searchTexfield() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: CupertinoTextField(
            keyboardType: TextInputType.text,
            placeholder: 'Search',
            placeholderStyle: _texfieldStyle,
            prefix: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.search,
                size: 18.0,
                color: Colors.black,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xFFF1F0F5),
            ),
          ),
        );
  }

  Widget _mostLikedRecipes() {
    return SizedBox(
      width: double.infinity,
      height: 176.0,
      child: ListView.builder(
        itemBuilder: (context, index) =>
            MostLikedRecipeWidget(recipe: _likedItems[index]),
        itemCount: _likedItems.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }

  Widget _popularRecipes() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) =>
            PopularRecipeWidget(recipe: _popularItems[index]),
        itemCount: _popularItems.length,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
