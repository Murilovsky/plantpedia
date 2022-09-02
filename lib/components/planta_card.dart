import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(Icons.person),
        Text('Nome'),
        Text('Tipo'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.water_drop, size: 16),
              Icon(Icons.water_drop, size: 16),
              Icon(Icons.water_drop, size: 16),
              Icon(Icons.water_drop, size: 16),
              Icon(Icons.water_drop, size: 16)
            ],
          ),
        )
      ]),
    );
  }
}
