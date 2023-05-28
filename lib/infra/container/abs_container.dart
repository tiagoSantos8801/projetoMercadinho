// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:mercadinho_dona_marry/infra/container/dependency_injectior/dependency_injector.dart';

abstract class Container {
  final Map<Type, InstanceGenerator<Object>> _drivers;
  late DependencyInjector di;

  Container(this._drivers) {
    initializer();
  }

  void initializer() {
    di = DependencyInjector();
    di.registerAll(_drivers);
  }
}
