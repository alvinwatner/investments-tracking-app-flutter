import 'package:connectivity/connectivity.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon/core/service/network_info.dart';
import 'package:pokemon/core/util/dio_logging_interceptor.dart';
import 'package:pokemon/core/util/shared_preferences_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /**
   * ! Features
   */

  // Bloc

  // Remote Data Sources

  // Use case

  // Repository

  /**
   * ! Core
   */
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /**
   * ! External
   */
  final sharedPreferences = await SharedPreferences.getInstance();
  final sharedPreferencesManager =
      SharedPreferencesManager.getInstance(sharedPreferences);
  sl.registerLazySingleton(() => sharedPreferencesManager);
  sl.registerLazySingleton(() {
    final options = BaseOptions(
      connectTimeout: 20 * 1000, //20 seconds
      receiveTimeout: 20 * 1000,
    );
    final dio = Dio(options);
    dio.interceptors.add(DioLoggingInterceptor(dio, sharedPreferencesManager));
    return dio;
  });

  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => DeviceInfoPlugin());

  // dao
  // final migrationAppDatabase = MigrationAppDatabase();
  // final database = await $FloorAppDatabase.databaseBuilder('iblasia_database.db').addMigrations(
  //   [
  //     migrationAppDatabase.migration1To2,
  //     migrationAppDatabase.migration2To3,
  //   ],
  // ).build();
  // sl.registerLazySingleton(() => database.panelCompanyDao);
  // sl.registerLazySingleton(() => database.logCallDao);
}
