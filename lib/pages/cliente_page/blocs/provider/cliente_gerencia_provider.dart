import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/blocs/cadastro_cliente_bloc.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/blocs/pesquisa_cliente_bloc.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/cliente_gerencia_tabs.dart';

class GerenciaClienteTabsProvider extends StatelessWidget {
  const GerenciaClienteTabsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PesquisaClienteBloc>(
          create: (BuildContext context) => PesquisaClienteBloc(),
        ),
        BlocProvider<CadastroClienteBloc>(
          create: (BuildContext context) => CadastroClienteBloc(),
        ),
      ],
      child: const ClienteGerenciaTabsPage(),
    );
  }
}
