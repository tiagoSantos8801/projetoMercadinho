import 'package:mercadinho_dona_marry/infra/container/drivers/abs_dirver.dart';

class OuthresDrives extends Driver {
  OuthresDrives()
      : super([TipoDriver.CACHE], [TipificacaoPubDev.shared_preferences]);
}
