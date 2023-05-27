import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/devedores/bloc/devedores_bloc.dart';
import 'package:mercadinho_dona_marry/pages/devedores/devedores_page.dart';

class DevedoresProvider extends StatelessWidget {
  const DevedoresProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DevedoresBloc>(
      create: (BuildContext context) => DevedoresBloc(),
      child: const DevedoresPage(),
    );
  }
}
