import 'package:flutter/material.dart';

import '../../common/style.dart';

class SeatWidget extends StatelessWidget {
  final int index;
  const SeatWidget({
    Key? key,
    this.index = 2,
  }) : super(key: key);

  Color get color {
    if (index == 0) {
      return kAvailableColor;
    } else if (index == 1) {
      return kPrimaryColor;
    } else {
      return kUnavailableColor;
    }
  }

  get borderColor {
    if (index == 0 || index == 1) {
      return kPrimaryColor;
    } else {
      return kUnavailableColor;
    }
  }

  get child {
    if (index == 0) {
      return const SizedBox();
    } else if (index == 1) {
      return Center(
        child: Text(
          'YOU',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
        color: color,
      ),
      width: 48,
      height: 48,
    );
  }
}
