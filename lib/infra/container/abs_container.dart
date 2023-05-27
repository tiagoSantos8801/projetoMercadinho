// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:mercadinho_dona_marry/infra/container/dependency_injectior/dependency_injector.dart';

abstract class Container {
  Map<Type, InstanceGenerator<Object>> _drivers;
  late DependencyInjector di;
  Container(this._drivers){
    initializer();
  }

  DependencyInjector get initializer {
    di = DependencyInjector();
    di.addAll(_drivers);
    return di;
  }
}
