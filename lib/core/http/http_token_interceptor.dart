import 'package:blank_app/data/data.dart';
import 'package:dio/dio.dart';

class HttpTokenInterceptor extends Interceptor {
  final AuthService authService;

  HttpTokenInterceptor({
    required this.authService,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers.containsKey('no-auth')) {
      return handler.next(options);
    }

    final token = await authService.getAuthToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
