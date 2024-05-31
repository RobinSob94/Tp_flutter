import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final Function(String) onChoiceSelected;

  Footer({required this.onChoiceSelected});

  final List<String> choices = [
    'cinema',
    'petanque',
    'fitness',
    'League Of Legend',
    'basket',
    'shopping',
    'programmation'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Wrap(
        children: choices.map((choice) {
          return ChoiceItem(
            choice: choice,
            onSelected: onChoiceSelected,
          );
        }).toList(),
      ),
    );
  }
}
