import 'package:flutter/material.dart';

class ImageEx extends StatelessWidget {
  const ImageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaGp0NaMeybUOS155HvUPoM5tY1hdim0_CSQ&s",),
        Spacer()
      ],
    );
  }
}