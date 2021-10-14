import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/model/recipe.dart';
import 'package:g56_homework_01/src/utilities/color.dart';

class RecipeCardWidget extends StatelessWidget {

  final Recipe recipe;

  const RecipeCardWidget({Key? key, required this.recipe }) : super(key: key);

  static const _titleStyle = TextStyle(color: primaryColor, fontSize: 32.0, fontWeight: FontWeight.bold);
  static const _subtitleStyle = TextStyle(color: primaryColor, fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Card(
        child: Stack(
          children: [
            Image(
              image: NetworkImage(recipe.image),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recipe.title, style: _titleStyle),
                  Text(recipe.subtitle, style: _subtitleStyle),
                ],
              ),
            )
          ],
        ),
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
