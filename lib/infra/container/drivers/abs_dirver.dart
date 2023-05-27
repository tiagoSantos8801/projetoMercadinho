// ignore_for_file: public_member_api_docs, sort_constructors_first

enum TipoDriver{
  BANCO_SQL,
  CONNECTION,
}

abstract class Driver {
  TipoDriver tipoDrive;
  Driver(this.tipoDrive);
}
