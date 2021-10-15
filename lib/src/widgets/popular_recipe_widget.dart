import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/model/recipe.dart';
import 'package:g56_homework_01/src/utilities/color.dart';
import 'package:g56_homework_01/src/widgets/rating_bar_widget.dart';

class PopularRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const PopularRecipeWidget({Key? key, required this.recipe}) : super(key: key);

  static const _titleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  static const _subtitleStyle = TextStyle(fontSize: 14.0);

  static const _ratingStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: accentColor);
  static const _cookedStyle = TextStyle(fontSize: 14.0, color: accentColor);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Image(
            image: NetworkImage(recipe.image),
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recipe.title, style: _titleStyle),
              Text(recipe.subtitle, style: _subtitleStyle),
              RatingBarWidget(initial: recipe.rating)
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(recipe.reviews, style: _ratingStyle),
            const Text("Cooked", style: _cookedStyle)
          ],
        )
      ],
    );
  }
}
