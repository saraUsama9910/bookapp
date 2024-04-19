import 'package:bookapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          backGroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        )),
        Expanded(
            child: CustomButton(
          backGroundColor: Color.fromARGB(255, 221, 114, 114),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        ))
      ],
    );
  }
}
