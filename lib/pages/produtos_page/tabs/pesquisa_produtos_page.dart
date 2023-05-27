import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/bloc/pesquisa_produtos_bloc.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_statetes.dart';

class PesquisaProdutoTab extends StatelessWidget {
  final foco = FocusNode();

  PesquisaProdutoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search_sharp)),
                  suffixIcon: IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                      },
                      icon: const Icon(Icons.clear)),
                  hintText: 'Pesquise aqui...',
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Produto(s) pesquisados: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 300,
            child: BlocBuilder<PesquisaProdutosBloc, AplicationStates>(
                builder: (context, state) {
              return ListView.builder(
                itemCount: 6,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: const Icon(Icons.add_a_photo_rounded),
                    title: Text("Produto tal - n°$i"),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
