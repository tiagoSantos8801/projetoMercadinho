import 'package:flutter/material.dart';
import 'package:mercadinho_dona_marry/controller/data/db_especialization/db_sqflite.dart';
import 'package:mercadinho_dona_marry/infra/router/gerenciador_rotas.dart';
import 'package:mercadinho_dona_marry/util/resources/theme/theme_app.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await DB.instance.database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: GerenciadorRotas.rotas,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: aplicationTheme(),
    );
  }
}
