import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mercadinho_dona_marry/infra/init_app/especialization/impl_init_container_adroid.dart';
import 'package:mercadinho_dona_marry/infra/init_app/especialization/impl_init_container_ios.dart';

abstract class InicializaContainers {
  @protected
  IniciaContainerIosImpl? containerIosImpl;

  @protected
  InicializaContainerAndroidImpl? containerAndroidImpl;

  @protected
  initializeContainers() {
    if (Platform.isAndroid) {
      return containerAndroidImpl = InicializaContainerAndroidImpl();
    }
    return containerIosImpl = IniciaContainerIosImpl();
  }

  @protected
  void containerBanco() {}
  @protected
  void containerConnection() {}
  @protected
  void otherContainer() {}
}
