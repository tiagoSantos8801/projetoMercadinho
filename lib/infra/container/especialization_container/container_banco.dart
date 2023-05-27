import 'package:mercadinho_dona_marry/infra/container/abs_container.dart';
import 'package:mercadinho_dona_marry/infra/container/dependency_injectior/dependency_injector.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/especialization_dirver/abs_drive_banco.dart';

class ContainerBanco extends Container {
  ContainerBanco(Map<Type, InstanceGenerator<DriverBanco>> drivers) : super(drivers);

}