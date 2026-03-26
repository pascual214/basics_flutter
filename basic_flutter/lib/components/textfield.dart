import 'package:flutter/material.dart';

class TextFieldEx extends StatelessWidget {
  const TextFieldEx({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
          ),  
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu contraseña",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            maxLength: 15,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu comentario",
              prefixIcon: Icon(Icons.comment),
              border: OutlineInputBorder(),
            ),
            maxLines: 5,
          ),  
        ),
      ],
    );
  }
}
