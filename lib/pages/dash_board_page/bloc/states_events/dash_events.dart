import 'package:flutter/material.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_events.dart';

abstract class DashBoardEvents extends AplicationEvents {}

class VaiParaRotaDeOpcoesCliente extends DashBoardEvents {
  final BuildContext context;

  VaiParaRotaDeOpcoesCliente(this.context);
}

class VaiParaRotaDeOpcoesProdutos extends DashBoardEvents {
  final BuildContext context;

  VaiParaRotaDeOpcoesProdutos(this.context);
}

class VaiParaRotaDeOpcoesDevedores extends DashBoardEvents {
  final BuildContext context;

  VaiParaRotaDeOpcoesDevedores(this.context);
}
