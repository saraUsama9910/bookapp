import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
  });
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text('19.99 €',
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w900)),
      ),
    );
  }
}
