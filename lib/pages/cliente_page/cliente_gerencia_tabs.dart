import 'package:flutter/material.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/tabs/form_cad_cliente_tab.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/tabs/pesquisa_cliente_page.dart';

class ClienteGerenciaTabsPage extends StatelessWidget {
  const ClienteGerenciaTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          title: const Text('Opções de clientes'),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Cadostro', icon: Icon(Icons.create)),
              Tab(text: 'Pesquisa', icon: Icon(Icons.search_sharp)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const FormCadastroClienteTabPage(),
            PesquisaClienteTabPege(),
          ],
        ),
      ),
    );
  }
}
