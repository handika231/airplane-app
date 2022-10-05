import 'package:flutter/material.dart';

import '../../common/style.dart';

enum ItemColor { black, green, red, purple }

class ItemDetailWidget extends StatelessWidget {
  final String text, value;
  final ItemColor color;
  const ItemDetailWidget({
    Key? key,
    this.text = '',
    this.value = '',
    this.color = ItemColor.black,
  }) : super(key: key);

  Color get colorItem {
    switch (color) {
      case ItemColor.black:
        return kBlackColor;
      case ItemColor.green:
        return kGreenColor;
      case ItemColor.red:
        return kRedColor;
      case ItemColor.purple:
        return kPrimaryColor;
      default:
        return kBlackColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/icon_check.png', width: 16),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: purpleTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
          ],
        ),
        Text(
          value,
          style: purpleTextStyle.copyWith(
            fontWeight: semiBold,
            color: colorItem,
          ),
        ),
      ],
    );
  }
}
