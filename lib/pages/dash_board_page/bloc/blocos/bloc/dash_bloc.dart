import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/pages/dash_board_page/bloc/states_events/dash_events.dart';
import 'package:mercadinho_dona_marry/infra/router/gerenciador_rotas.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_events.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_statetes.dart';

class DashBoardBloc extends Bloc<AplicationEvents, AplicationStates> {
  DashBoardBloc() : super(InitialState()) {
    on<LoadDataEvent>((event, emit) {});
    on<VaiParaRotaDeOpcoesCliente>(_chamaRotaOpcCiente);
    on<VaiParaRotaDeOpcoesProdutos>(_chamaRotaOpcProduto);
    on<VaiParaRotaDeOpcoesDevedores>(_chamaRotaDevedores);
  }

  FutureOr<void> _chamaRotaOpcCiente(event, emit) {
    GerenciadorRotas()
        .chamaRotaNomeadaEmpilhando(event.context, GuiaRotaApp.opcoesCliente());
  }
  
  FutureOr<void> _chamaRotaOpcProduto(event, emit) {
    GerenciadorRotas()
        .chamaRotaNomeadaEmpilhando(event.context, GuiaRotaApp.opcoesProdutos());
  }

  FutureOr<void> _chamaRotaDevedores(event, emit) {
    GerenciadorRotas()
        .chamaRotaNomeadaEmpilhando(event.context, GuiaRotaApp.devedores());
  }
}
