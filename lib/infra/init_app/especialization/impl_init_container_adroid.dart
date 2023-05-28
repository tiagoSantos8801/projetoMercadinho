import 'package:mercadinho_dona_marry/infra/container/dependency_injectior/dependency_injector.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/especialization_dirver/impl_drive_cache_shared_pref.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/especialization_dirver/impl_drive_db_sqflite.dart';
import 'package:mercadinho_dona_marry/infra/container/especialization_container/ContainerOutros.dart';
import 'package:mercadinho_dona_marry/infra/container/especialization_container/container_banco.dart';
import 'package:mercadinho_dona_marry/infra/init_app/abs_inicializa_container.dart';

class InicializaContainerAndroidImpl extends InicializaContainers {
  late ContainerBanco containerBancoInst;

  InicializaContainerAndroidImpl() {
    containerBanco();
    otherContainer();
    containerConnection();
  }

  @override
  void containerBanco() {
    containerBancoInst = ContainerBanco({
        SQFliteDrive: InstanceGenerator(() => SQFliteDrive.instance, true),
      });
  }

  @override
  void otherContainer() {
    ContainerOutros({
      PreferenciasUsuarioCache: InstanceGenerator(() => PreferenciasUsuarioCache(), true),
    });
  }

  @override
  void containerConnection() {
    // TODO: implement containerConnexao
  }
}
