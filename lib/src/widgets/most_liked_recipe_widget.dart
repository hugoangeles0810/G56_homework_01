import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/model/recipe.dart';
import 'package:g56_homework_01/src/widgets/rating_bar_widget.dart';

class MostLikedRecipeWidget extends StatelessWidget {

  final Recipe recipe;

  static const _titleStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  const MostLikedRecipeWidget({Key? key, required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Image(
            image: NetworkImage(recipe.image),
            width: 150.0,
            height: 130.0,
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
        ),
        Text(recipe.title, style: _titleStyle),
        RatingBarWidget(initial: recipe.rating)
      ],
    );
  }
}
