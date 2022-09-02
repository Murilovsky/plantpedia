import 'package:flutter/material.dart';

const List<String> tipos = [
  'Flower',
  'Edible',
  'Cactus',
  'Herb',
  'Tea',
  'Venomous'
];

class NewPlant extends StatefulWidget {
  NewPlant({super.key});

  @override
  State<NewPlant> createState() => _NewPlantState();
}

class _NewPlantState extends State<NewPlant> {
  final TextEditingController _nameController = TextEditingController();

  final String _dropDownValue = tipos.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Plant'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              const Text('Nome', style: TextStyle(fontSize: 16)),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const Text('Tipo', style: TextStyle(fontSize: 16)),
              DropdownButtonFormField(
                value: _dropDownValue,
                items: tipos.map<DropdownMenuItem<String>>((String item) {
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item,
                  );
                }).toList(),
                onChanged: (String? value) {},
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const Text('Nome', style: TextStyle(fontSize: 16)),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const Text('Nome', style: TextStyle(fontSize: 16)),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Adicionar'), const Icon(Icons.add)],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
