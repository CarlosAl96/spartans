import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get club => getField<String>('club');
  set club(String? value) => setField<String>('club', value);

  double? get puntos => getField<double>('puntos');
  set puntos(double? value) => setField<double>('puntos', value);

  DateTime? get fechaDeNacimiento => getField<DateTime>('fecha_de_nacimiento');
  set fechaDeNacimiento(DateTime? value) =>
      setField<DateTime>('fecha_de_nacimiento', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  bool get disponible => getField<bool>('disponible')!;
  set disponible(bool value) => setField<bool>('disponible', value);

  String? get profilePicture => getField<String>('profile_picture');
  set profilePicture(String? value) =>
      setField<String>('profile_picture', value);
}
