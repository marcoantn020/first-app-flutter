
import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int hard;

  const Difficulty({
    super.key, required this.hard,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            size: 15,
            color: hard >= 1
                ? Colors.blue
                : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: hard >= 2
                ? Colors.blue
                : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: hard >= 3
                ? Colors.blue
                : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: hard >= 4
                ? Colors.blue
                : Colors.blue[100]),
        Icon(Icons.star,
            size: 15,
            color: hard >= 5
                ? Colors.blue
                : Colors.blue[100]),
      ],
    );
  }
}