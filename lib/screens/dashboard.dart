import 'package:flutter/material.dart';
import 'package:plantpedia/screens/home.dart';
import 'package:plantpedia/screens/my_plants.dart';
import 'package:plantpedia/screens/search.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedItem = 0;
  static List<Widget> pages = [HomePage(), MyPlantsPage(), SearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlantPedia'),
        centerTitle: true,
        bottomOpacity: 80,
      ),
      body: pages.elementAt(_selectedItem),
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.green[700],
          height: 70,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: changeTab,
          destinations: const <NavigationDestination>[
            NavigationDestination(
              label: 'Home',
              icon: Icon(Icons.home_filled),
            ),
            NavigationDestination(
              label: 'My Plants',
              icon: Icon(Icons.gradient),
            ),
            NavigationDestination(
              label: 'Search',
              icon: Icon(Icons.search),
            )
          ],
          selectedIndex: _selectedItem),
    );
  }

  void changeTab(int index) {
    setState(() {
      _selectedItem = index;
    });
  }
}
