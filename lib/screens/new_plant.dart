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
  final TextEditingController _descriptionController = TextEditingController();

  final String _dropDownValue = tipos.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Add Plant',
            style: TextStyle(
                fontFamily: 'Patrick',
                fontWeight: FontWeight.bold,
                fontSize: 32)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              const Text('Photo', style: TextStyle(fontSize: 16)),
              ElevatedButton(
                  onPressed: getImageFromFile,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Choose image...'),
                      Icon(Icons.image_search)
                    ],
                  )),
              const Text('Name', style: TextStyle(fontSize: 16)),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const Text('Type', style: TextStyle(fontSize: 16)),
              DropdownButtonFormField(
                value: _dropDownValue,
                items: tipos.map<DropdownMenuItem<String>>((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? value) {},
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const Text('Description', style: TextStyle(fontSize: 16)),
              TextField(
                maxLines: 6,
                minLines: 3,
                controller: _descriptionController,
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

void getImageFromFile() async {
  // final FileImage fileImage = FileImage(await Image.file())
}
