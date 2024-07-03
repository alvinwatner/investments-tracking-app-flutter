import 'package:connectivity/connectivity.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:in_ai/core/service/network_info.dart';
import 'package:in_ai/core/util/dio_logging_interceptor.dart';
import 'package:in_ai/core/util/shared_preferences_manager.dart';
import 'package:in_ai/features/data/data_sources/balances_remote_data_sources.dart';
import 'package:in_ai/features/domain/repositories/balances/balances_repository.dart';
import 'package:in_ai/features/domain/use_cases/get_balances_info/get_balances_info.dart';
import 'package:in_ai/features/presentation/bloc/balances/balances_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/data/repositories/balances/balances_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /**
   * ! Features
   */

  // Bloc
  sl.registerFactory(
    () => BalancesBloc(
      getBalancesInfo: sl(),
    ),
  );

  // Remote Data Sources
  sl.registerLazySingleton<BalancesRemoteDataSource>(
    () => BalancesRemoteDataSourceImpl(
      dio: sl(),
    ),
  );

  // Use case
  sl.registerLazySingleton(
    () => GetBalancesInfo(
      repository: sl(),
    ),
  );

  // Repository
  sl.registerLazySingleton<BalancesRepository>(
    () => BalancesRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

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
