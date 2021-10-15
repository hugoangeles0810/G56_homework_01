
import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/utilities/color.dart';

class RatingBarWidget extends StatelessWidget {

  final int initial;
  final int max;

  const RatingBarWidget({ Key? key, this.initial = 0, this.max  = 5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(max, (index) => _start(index))
    );
  }

  Widget _start(int current) {
    return Icon(
      current <= initial ? Icons.star : Icons.star_outline,
      size: 17,
      color: accentColor
    );
  }
}