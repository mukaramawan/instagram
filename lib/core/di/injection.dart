import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/core/di/injection.config.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  final prefs = await SharedPreferences.getInstance();
  getIt
    ..registerSingleton<SharedPreferences>(prefs)
    ..init();
}
