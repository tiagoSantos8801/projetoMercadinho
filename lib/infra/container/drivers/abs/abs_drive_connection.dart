import 'dart:convert';

import 'package:http/http.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/abs/abs_dirver.dart';

abstract class DriveConnection extends Driver {
  DriveConnection(TipificacaoPubDev tipoPub)
      : super([TipoDriver.CONNECTION], [tipoPub]);

  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding});

  Future<Response> get(Uri url, {Map<String, String>? headers});
}
