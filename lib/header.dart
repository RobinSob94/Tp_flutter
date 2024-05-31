import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final List<String> selectedChoices;
  final Color color;

  Header({required this.selectedChoices, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vos choix :',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Cliquez sur les choix en dessous !',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 10),
          Wrap(
            children: selectedChoices.map((choice) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Chip(
                  label: Text(choice),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
