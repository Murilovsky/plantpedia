import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(children: [
        Image.asset(
          height: 100,
          width: double.maxFinite,
          'images/calandiva.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Calandiva',
                    style: TextStyle(fontSize: 20, color: Colors.green)),
                Text('Flower'),
                Text('Water every 2 weeks')
              ]),
        )
      ]),
    );
  }
}
