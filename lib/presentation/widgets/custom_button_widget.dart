import 'package:flutter/material.dart';

import '../../common/style.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: whiteTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 18,
        ),
      ),
    );
  }
}
