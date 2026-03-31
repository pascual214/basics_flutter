import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: toolbarResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(context) {
    double fixedHeight = height / 100;
    double imcResult = weight / (fixedHeight * fixedHeight);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tu resultado",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      getTextByImc(imcResult),
                      style: TextStyle(
                        color: getColorByImc(imcResult),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      imcResult.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 76,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: Text(
                        getDescriptionByImc(imcResult),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 39),
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(AppColor.primary),
                ),
                child: Text("Finalizar", style: TextStyles.bodyText),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColor.primary,
      foregroundColor: Colors.white,
    );
  }

  Color getColorByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => Colors.blue, // IMC Bajo
      < 24.9 => Colors.green, // IMC Normal
      < 29.99 => Colors.orange, // Sobrepeso
      _ => Colors.red, //Obesidad
    };
  }

  String getTextByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "IMC bajo",
      < 24.5 => "IMC Normal",
      < 29.99 => "Sobrepeso",
      _ => "Obesidad",
    };
  }

  String getDescriptionByImc(double imcResult) {
    return switch (imcResult) {
      < 18.5 => "Tu peso está por debajo de lo recomendado",
      < 24.5 => "Tu peso está en el rango saludable",
      < 29.99 => "Tienes sobrepeso, cuida tu alimentación",
      _ => "Tienes obesidad, consulta con un especialista",
    };
  }
}
