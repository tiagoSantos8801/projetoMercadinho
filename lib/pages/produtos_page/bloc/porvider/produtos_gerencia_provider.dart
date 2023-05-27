import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/bloc/cadastro_produtos_bloc.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/bloc/pesquisa_produtos_bloc.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/produtos_gerencia_page.dart';

class GerenciaProdutosTabProvider extends StatelessWidget {
  const GerenciaProdutosTabProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<CadastroProdutoBloc>(
        create: (BuildContext context) => CadastroProdutoBloc(),
      ),
      BlocProvider<PesquisaProdutosBloc>(
        create: (BuildContext context) => PesquisaProdutosBloc(),
      ),
    ], child: const GerenciaProdutosTabPage());
  }
}
