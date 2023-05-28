import 'package:mercadinho_dona_marry/infra/container/drivers/abs_dirver.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/abs_drive_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuarioCache extends DriveCache {
  late SharedPreferences prefs;

  PreferenciasUsuarioCache()
      : super(TipificacaoPubDev.shared_preferences);

  @override
  Future<bool> guardarString(String chave, String dado) async {
    prefs = await SharedPreferences.getInstance();
    return await prefs.setString(chave, dado);
  }

  @override
  Future<bool> guardarStringList(String chave, List<String> dado) async {
    prefs = await SharedPreferences.getInstance();
    return await prefs.setStringList(chave, dado);
  }

  @override
  Future<String> pedgarString(String chave) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString(chave) ?? '';
  }

  @override
  Future<List<String>> pegarStringList(String chave) async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(chave) ?? [];
  }
}
