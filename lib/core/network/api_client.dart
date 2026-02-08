import 'package:carcutter_test/core/exceptions/exceptions.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  Future<T> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    return _request<T>(
      () => _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      ),
    );
  }

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    return _request<T>(
      () => _dio.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      ),
    );
  }

  Future<T> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    return _request<T>(
      () => _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      ),
    );
  }

  Future<T> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    return _request<T>(
      () => _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
      ),
    );
  }

  Future<T> _request<T>(Future<Response> Function() request) async {
    try {
      final response = await request();
      // No content
      if (response.statusCode == 204) {
        return null as T;
      }
      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } on TypeError catch (e, stackTrace) {
      throw AppException.parseError(error: e, stackTrace: stackTrace);
    } catch (e, stackTrace) {
      throw AppException.unknown(error: e, stackTrace: stackTrace);
    }
  }

  AppException _handleDioError(DioException e) {
    // Network errors
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.connectionError) {
      return const AppException.networkError();
    }

    final statusCode = e.response?.statusCode;
    final dynamic data = e.response?.data;

    // Extract msg from the api if it exists
    String? serverMessage;
    if (data is Map && data['message'] is String) {
      serverMessage = data['message'] as String;
    }

    if (statusCode != null) {
      // All server errors
      if (statusCode >= 500) {
        return AppException.serverError(statusCode: statusCode);
      }
      // Client errors
      if (statusCode >= 400) {
        if (statusCode == 429) {
          return AppException.tooManyRequests();
        }
        return AppException.validationError(
          message: serverMessage,
          errors: data is Map ? data['errors'] : null,
          statusCode: statusCode,
        );
      }
    }
    return AppException.unknown(error: e);
  }
}
