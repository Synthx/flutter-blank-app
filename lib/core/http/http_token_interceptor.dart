import 'package:dio/dio.dart';

class HttpTokenInterceptor extends Interceptor {
  String? _token;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] = 'Bearer $_token';

    handler.next(options);
  }
}
