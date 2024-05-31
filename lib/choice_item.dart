import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String choice;
  final Function(String) onSelected;

  ChoiceItem({required this.choice, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () => onSelected(choice),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Text(
            choice,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
