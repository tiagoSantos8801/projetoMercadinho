// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:mercadinho_dona_marry/infra/init_app/abs_inicializa_container.dart';

class InicializaApp extends InicializaContainers{
  late final containerPlatformInitialized;
  InicializaApp(){
    containerPlatformInitialized = super.initializeContainers();
  }
}