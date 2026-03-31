import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; // Altura inicial
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text("Altura".toUpperCase(), style: TextStyles.bodyText,),
              Text("${height.toStringAsFixed(0)} cm", style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )),
              Slider(value: height, onChanged: (value) {
                 setState(() {
                   height = value;
                 });
              },
              min: 150,
              max: 220,
              divisions: 70,
              label: "${height.toStringAsFixed(0)}",
              activeColor: AppColor.primary,)
            ],
          ),
        ),
      ),
    );
  }
}