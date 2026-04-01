import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero ${superhero.name}")),
      body: Center(
        child: Column(
          children: [
            Text(superhero.realName, style: TextStyle(fontSize: 28)),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 190,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerstatsResponse.power,
                          ),
                          width: 20,
                          color: Colors.red,
                        ),
                        Text("Poder"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerstatsResponse.strength,
                          ),
                          width: 20,
                          color: Colors.grey,
                        ),
                        Text("Fuerza"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerstatsResponse.intelligence,
                          ),
                          width: 20,
                          color: Colors.blue,
                        ),
                        Text("Inteligencia"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerstatsResponse.durability,
                          ),
                          width: 20,
                          color: Colors.deepOrange,
                        ),
                        Text("Durabilidad"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerstatsResponse.combat,
                          ),
                          width: 20,
                          color: Colors.black,
                        ),
                        Text("Combate"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
