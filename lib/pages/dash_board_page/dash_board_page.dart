import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/bloc/blocos/bloc/dash_bloc.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/bloc/states_events/dash_events.dart';

class DashBoardPrincipalPage extends StatelessWidget {
  const DashBoardPrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu principal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
          children: [
            containerGridMenu(context, Icons.person_search, 'Clientes',
                delegate: () => context
                    .read<DashBoardBloc>()
                    .add(VaiParaRotaDeOpcoesCliente(context))),
            containerGridMenu(
                context, Icons.add_shopping_cart_outlined, 'Produtos',
                delegate: () => context
                    .read<DashBoardBloc>()
                    .add(VaiParaRotaDeOpcoesProdutos(context))),
            containerGridMenu(context, Icons.book, 'Devedores',
                delegate: () => context
                    .read<DashBoardBloc>()
                    .add(VaiParaRotaDeOpcoesDevedores(context))),
            containerGridMenu(context, Icons.settings, 'Configurações',
                fontSize: 23),
          ],
        ),
      ),
    );
  }

  InkWell containerGridMenu(
      BuildContext context, IconData icone, String descricao,
      {void Function()? delegate, double? fontSize}) {
    return InkWell(
      onTap: delegate ?? () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icone,
              size: 40,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Text(
              descricao,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: fontSize ?? 30),
            )
          ],
        ),
      ),
    );
  }
}
