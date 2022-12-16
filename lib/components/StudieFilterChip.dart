import 'package:flutter/material.dart';

class StudieFilterChip extends StatelessWidget {
  final title;
  final function;
  final enabled;
  const StudieFilterChip(
  {
    super.key,
    required this.title,
    required this.function,
    required this.enabled
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: () {
          function(title);
        },
        child:Container(
          decoration: BoxDecoration(
            border: enabled ? Border.all(color: Colors.blue[400]!) : Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: Text(
              title,
              style: TextStyle(
                color: enabled ? Colors.blue[400]! : Colors.grey.shade400,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}