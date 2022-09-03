import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantpedia/screens/dashboard.dart';

void main() {
  runApp(const PlantPediaApp());
}

class PlantPediaApp extends StatelessWidget {
  const PlantPediaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontFamily: 'Patrick',
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
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
