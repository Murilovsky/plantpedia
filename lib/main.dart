import 'package:flutter/material.dart';
import 'package:plantpedia/screens/dashboard.dart';

void main() {
  runApp(const PlantPediaApp());
}

class PlantPediaApp extends StatelessWidget {
  const PlantPediaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.light(
              primary: Colors.green,
              secondary: Colors.amber,
              outline: Colors.green),
          useMaterial3: true),
      home: const Dashboard(),
    );
  }
}
