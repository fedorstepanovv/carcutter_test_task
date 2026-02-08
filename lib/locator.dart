import 'package:carcutter_test/core/config/app_config.dart';
import 'package:carcutter_test/core/database/app_database.dart';
import 'package:carcutter_test/core/network/api_client.dart';
import 'package:carcutter_test/features/employees/employee.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  ///
  /// Core
  ///
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        sendTimeout: AppConfig.sendTimeout,
        receiveTimeout: AppConfig.receiveTimeout,
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  });
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<Dio>()));
  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());

  ///
  /// Employee
  ///
  sl.registerLazySingleton<LocalEmployeeDataSource>(
    () => LocalEmployeeDataSourceImpl(sl<AppDatabase>()),
  );

  sl.registerLazySingleton<RemoteEmployeeDataSource>(
    () => RemoteEmployeeDataSourceImpl(sl<ApiClient>()),
  );
  sl.registerLazySingleton<EmployeeRepository>(
    () => EmployeeRepositoryImpl(
      sl.get<LocalEmployeeDataSource>(),
      sl.get<RemoteEmployeeDataSource>(),
    ),
  );
}
