import 'package:flutter/material.dart';

class CadastroProdutoTab extends StatelessWidget {
  const CadastroProdutoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 30.0,
                backgroundImage:
                NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Informações cadastro de produto: ',
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                ),
              ),
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Sobrenome",
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone",
                  ),
                ),
              ),
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Localização/Endereço: ',
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              Column(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.add_location_alt_outlined),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Rua",
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Bairro",
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Número",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      )),
    );
  }
}
