import 'package:flutter/material.dart';
import 'package:superhero_app/core/app_color.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Superheroe: ${superhero.name}"),
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              superhero.name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(superhero.realName, style: TextStyle(fontSize: 14)),
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
                        Text(
                          superhero.powerstatsResponse.power,
                          style: TextStyle(color: Colors.grey),
                        ),
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
                        Text(
                          superhero.powerstatsResponse.strength,
                          style: TextStyle(color: Colors.grey),
                        ),
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
                        Text(
                          superhero.powerstatsResponse.intelligence,
                          style: TextStyle(color: Colors.grey),
                        ),
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
                        Text(
                          superhero.powerstatsResponse.durability,
                          style: TextStyle(color: Colors.grey),
                        ),
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
                        Text(
                          superhero.powerstatsResponse.combat,
                          style: TextStyle(color: Colors.grey),
                        ),

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
