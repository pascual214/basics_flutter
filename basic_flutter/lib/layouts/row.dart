import 'package:flutter/material.dart';

class RowEx extends StatelessWidget {
  const RowEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: SizedBox(
        height: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ejemplo 1"),
            Text("Ejemplo 2"),
            Text("Ejemplo 3"),
            Text("Ejemplo 4"),
          ],
        ),
      ),
    );
  }
}