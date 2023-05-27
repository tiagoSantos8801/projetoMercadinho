import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_events.dart';
import 'package:mercadinho_dona_marry/infra/states_events_aplication/aplication_statetes.dart';

class PesquisaClienteBloc extends Bloc<AplicationEvents, AplicationStates> {
  PesquisaClienteBloc() : super(InitialState()) {
    on<LoadDataEvent>((event, emit) {});
  }
}
