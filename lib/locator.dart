import 'package:carcutter_test/core/config/app_config.dart';
import 'package:carcutter_test/core/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        sendTimeout: AppConfig.sendTimeout,
        receiveTimeout: AppConfig.receiveTimeout,
      ),
    );
    dio.interceptors.add(LogInterceptor());
    return dio;
  });
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<Dio>()));
}
