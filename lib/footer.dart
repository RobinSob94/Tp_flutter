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
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.start,
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
