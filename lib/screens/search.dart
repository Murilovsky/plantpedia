import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController pesquisa = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Pesquise sobre qualquer planta',
              style: TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          TextField(
            controller: pesquisa,
            decoration: const InputDecoration(
                hintText: 'Costela de Adão',
                suffixIcon:
                    IconButton(icon: Icon(Icons.search), onPressed: search),
                border: OutlineInputBorder()),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}

void search() {
  print('Cacaca');
}
