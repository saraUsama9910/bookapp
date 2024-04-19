import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(4),
          child: Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.yellow,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16
              .copyWith(decoration: TextDecoration.none, color: Colors.white),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          '(236)',
          style: Styles.textStyle14
              .copyWith(color: Colors.grey, decoration: TextDecoration.none),
        )
      ],
    );
  }
}
