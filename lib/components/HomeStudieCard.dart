import 'package:flutter/material.dart';

class HomeStudieCard extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final String imageUrl;
  final double borderRadius;
  final Color color;
  final Color titleColor;
  final double coverHeight;
  final double fontSize;

  final function;

  const HomeStudieCard(
      {
        required this.title,
        required this.width,
        required this.height,
        required this.imageUrl,
        required this.coverHeight,
        required this.borderRadius,
        required this.color,
        required this.titleColor,
        required this.fontSize,
        required this.function,
      });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          function(title);
        },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: this.width,
            height: this.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius),
                  child: Image(
                    width: this.width,
                    height: this.height,
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: this.coverHeight,
                    width: this.width,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(borderRadius), bottomRight: Radius.circular(borderRadius))
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: titleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: this.fontSize
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}