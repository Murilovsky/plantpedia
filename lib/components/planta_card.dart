import 'package:flutter/material.dart';
import 'package:plantpedia/screens/detail.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
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
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                          fontFamily: 'Patrick',
                          fontWeight: FontWeight.bold)),
                  Text('Flower'),
                  Text('Water every 2 weeks')
                ]),
          )
        ]),
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailedPlant())),
    );
  }
}
