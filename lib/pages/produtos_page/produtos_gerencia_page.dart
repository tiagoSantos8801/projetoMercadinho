import 'package:flutter/material.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/tabs/cadastro_produto_page.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/tabs/pesquisa_produtos_page.dart';

class GerenciaProdutosTabPage extends StatelessWidget {
  const GerenciaProdutosTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          title: const Text('Opções de produtos'),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Cadostro', icon: Icon(Icons.create)),
              Tab(text: 'Pesquisa', icon: Icon(Icons.search_sharp)),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            const CadastroProdutoTab(),
            PesquisaProdutoTab(),
          ],
        ),
      ),
    );
  }
}
