import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String choice;
  final Function(String) onSelected;

  ChoiceItem({required this.choice, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(choice),
      child: Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          choice,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
