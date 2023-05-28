import 'package:mercadinho_dona_marry/infra/container/drivers/abs_dirver.dart';

abstract class DriveCache extends Driver {
  DriveCache(TipificacaoPubDev tipoPub)
      : super([TipoDriver.CACHE], [tipoPub]);

  Future<String> pedgarString(String chave);

  Future<List<String>> pegarStringList(String chave);

  Future<bool> guardarString(String chave, String dado);

  Future<bool> guardarStringList(String chave, List<String> dado);
}
