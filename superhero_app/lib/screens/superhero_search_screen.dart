import 'package:flutter/material.dart';
import 'package:superhero_app/core/app_color.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';
import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:superhero_app/data/repository.dart';
import 'package:superhero_app/screens/superhero_detail_screen.dart';

class SuperheroSearchScreen extends StatefulWidget {
  const SuperheroSearchScreen({super.key});

  @override
  State<SuperheroSearchScreen> createState() => _SuperheroSearchScreenState();
}

class _SuperheroSearchScreenState extends State<SuperheroSearchScreen> {
  Future<SuperheroResponse?>? _superheroInfo;
  Repository repository = Repository();
  bool _isTextEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Superhero search"),
        backgroundColor: AppColor.primary,
        foregroundColor: AppColor.secondary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Busca un superhéroe",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  _isTextEmpty = text.isEmpty;
                  _superheroInfo = repository.fetchSuperheroInfo(text);
                });
              },
            ),
          ),
          bodyList(_isTextEmpty),
        ],
      ),
    );
  }


  FutureBuilder<SuperheroResponse?> bodyList(bool _isTextEmpty) {
    return FutureBuilder(
          future: _superheroInfo,
          builder: (context, snapshot) {
            if( _isTextEmpty) return Text("Introduce un nombre");
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error:  ${snapshot.error}");
            } else if (snapshot.hasData) {
              var superheroList = snapshot.data?.result;
              return Expanded(
                child: ListView.builder(
                  itemCount: superheroList?.length ?? 0,
                  itemBuilder: (context, index) {
                    if(superheroList != null) {
                      return itemSuperhero(superheroList[index]);
                    } else {
                      return Text("No se puede jeje");
                    }
                  },
                ),
              );
            } else {
              return Text("No hay resultados");
            }
          },
        );
  }

  Padding itemSuperhero(SuperheroDetailResponse item) => Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
    child: GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SuperheroDetailScreen(superhero: item))),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.primary),
        child: Column(
          children: [
            Text(item.name, style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: Colors.black),)
          ],
        ),
      ),
    ),
  );
}
