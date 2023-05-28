import 'package:mercadinho_dona_marry/infra/container/abs_container.dart';
import 'package:mercadinho_dona_marry/infra/container/dependency_injectior/dependency_injector.dart';

class ContainerOutros extends Container {
  ContainerOutros(Map<Type, InstanceGenerator<Object>> drivers)
      : super(drivers);
}