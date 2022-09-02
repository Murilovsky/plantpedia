import 'package:flutter/material.dart';
import 'package:plantpedia/components/planta_card.dart';
import 'package:plantpedia/screens/new_plant.dart';

class MyPlantsPage extends StatelessWidget {
  const MyPlantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
            childAspectRatio: 0.8,
            crossAxisCount: 2,
            children: [PlantCard(), PlantCard(), PlantCard(), PlantCard()]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewPlant()));
          },
          child: Icon(Icons.add)),
    );
  }
}
