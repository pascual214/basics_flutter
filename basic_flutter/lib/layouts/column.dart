import 'package:flutter/material.dart';

class ColumnEx extends StatelessWidget {
  const ColumnEx({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [ 
          Text("San Antonio Spurs"),
        ],
      ),
    ); 
  }
}