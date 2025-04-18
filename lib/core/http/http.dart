import 'package:blank_app/core/core.dart';
import 'package:dio/dio.dart';

import 'http_logging_interceptor.dart';
import 'http_token_interceptor.dart';

late final Dio http;

void setupHttp() {
  final options = BaseOptions(
    baseUrl: config.apiUrl,
    contentType: 'application/json',
  );

  http = Dio(options);
  http.interceptors
    ..add(HttpTokenInterceptor(authService: getIt()))
    ..add(HttpLoggingInterceptor());
}
