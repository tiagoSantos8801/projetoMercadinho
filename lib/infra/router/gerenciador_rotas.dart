import 'package:flutter/material.dart';
import 'package:mercadinho_dona_marry/pages/cliente_page/blocs/provider/cliente_gerencia_provider.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/bloc/blocos/provider/dash_provider.dart';
import 'package:mercadinho_dona_marry/pages/devedores/bloc/provider/devedeores_provider.dart';
import 'package:mercadinho_dona_marry/pages/produtos_page/bloc/porvider/produtos_gerencia_provider.dart';

class GerenciadorRotas {
  static Map<String, Widget Function(BuildContext)> rotas = {
    GuiaRotaApp.dashboard(): (context) => const DashBoardProvider(),
    GuiaRotaApp.opcoesCliente(): (context) =>
        const GerenciaClienteTabsProvider(),
    GuiaRotaApp.opcoesProdutos(): (context) =>
        const GerenciaProdutosTabProvider(),
    GuiaRotaApp.devedores(): (context) => const DevedoresProvider(),
  };

  void chamaRotaNomeadaComReplace(BuildContext context, String nomeRota) =>
      Navigator.pushReplacementNamed(context, nomeRota);

  void chamaRotaNomeadaEmpilhando(BuildContext context, String nomeRota) =>
      Navigator.pushNamed(context, nomeRota);
}

class GuiaRotaApp {
  static String dashboard() => '/';
  static String opcoesCliente() => '/GerenciaClienteTabsProvider';
  static String opcoesProdutos() => '/GerenciaProdutosTabProvider';
  static String devedores() => '/Devedores';
}
