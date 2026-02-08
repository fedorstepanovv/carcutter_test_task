import 'package:carcutter_test/core/exceptions/app_exception/app_exception.dart';

extension AppExceptionMapper on AppException {
  String mapErrorMessage() {
    return when(
      serverError: (code) => 'Server Error ($code). Please try again.',
      networkError: () =>
          'No internet connection. Enable internet connection to enjoy the full app experience.',
      validationError: (msg, _, _) => msg ?? 'Invalid Input',
      parseError: (_, _) =>
          'Something went wrong on our side. We are working on it!',
      unknown: (_, _) =>
          'Something went wrong on our side. We are working on it!',
      tooManyRequests: () => 'Server is busy. Give it some time to relax',
    );
  }
}
