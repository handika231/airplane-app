import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String image;
  const PhotoItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),
        child: Image.asset(
          image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
