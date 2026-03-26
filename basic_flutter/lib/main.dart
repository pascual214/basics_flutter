import 'package:basic_flutter/components/button.dart';
import 'package:basic_flutter/components/floatingbutton.dart';
import 'package:basic_flutter/components/image.dart';
import 'package:basic_flutter/components/textfield.dart';
import 'package:basic_flutter/layouts/column.dart';
import 'package:basic_flutter/layouts/row.dart';
import 'package:basic_flutter/components/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("Mi aplicación"),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.sports_basketball))],
        ),
        body: ImageEx(),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}
