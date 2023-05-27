import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/bloc/blocos/bloc/dash_bloc.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/dash_board_page.dart';

class DashBoardProvider extends StatelessWidget {
  const DashBoardProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashBoardBloc>(
      create: (_) => DashBoardBloc(),
      child: const DashBoardPrincipalPage(),
    );
  }
}
