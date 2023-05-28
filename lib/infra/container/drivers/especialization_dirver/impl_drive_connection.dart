import 'dart:convert';

import 'package:mercadinho_dona_marry/infra/container/drivers/abs/abs_dirver.dart';
import 'package:mercadinho_dona_marry/infra/container/drivers/abs/abs_drive_connection.dart';
import 'package:http/http.dart';

class DriveConnectionHttpImpl extends DriveConnection {
  DriveConnectionHttpImpl() : super(TipificacaoPubDev.http);

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    return get(url, headers: headers);
  }

  @override
  Future<Response> post(Uri url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) {
    return post(url, headers: headers, body: body, encoding: encoding);
  }
}
