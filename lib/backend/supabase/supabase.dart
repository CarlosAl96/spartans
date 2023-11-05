import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ljncoljreveahxvnxjpx.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxqbmNvbGpyZXZlYWh4dm54anB4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzIwNzY1OTEsImV4cCI6MTk4NzY1MjU5MX0.4XLrSwPmKT08m8d8wKMqxHnVpnDpIab6Q98SkyNcdws';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
