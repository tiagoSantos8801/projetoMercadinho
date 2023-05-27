// ignore_for_file: prefer_typing_uninitialized_variables

abstract class AplicationStates {}

class InitialState extends AplicationStates {}

class LoadingDataState extends AplicationStates {}

class LoadedDataState extends AplicationStates {
  final data;

  LoadedDataState(this.data);
}

class ErroState extends AplicationStates {
  final String msg;

  ErroState(this.msg);
}
