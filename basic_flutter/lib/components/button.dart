import 'package:flutter/material.dart';

class ButtonEx extends StatelessWidget {
  const ButtonEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {
            print("Pulsado");
          },
          child: Text("Clica aquí", style: TextStyle(color: Colors.black)),
          onLongPress: () {
            print("Bien pulsado");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.grey),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            print("Pulsado");
          },
          child: Text("Outlined Button"),
        ),
        TextButton(onPressed: () {}, child: Text("textButton")),
        FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.sports_basketball)),
        Spacer(),
      ],
    );
  }
}