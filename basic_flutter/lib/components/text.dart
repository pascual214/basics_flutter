import 'package:flutter/material.dart';

class TextEx extends StatelessWidget {
  const TextEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text(
          "Texto uno",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            backgroundColor: Colors.grey,
          ),
        ),

        Text(
          "Texto dos Texto dos Texto dos Texto dosTexto dos Texto dos",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
