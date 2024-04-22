import 'package:dio/dio.dart';

import 'http_logging_interceptor.dart';
import 'http_token_interceptor.dart';

late final Dio http;

void setupHttp() {
  final options = BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
    contentType: 'application/json',
  );

  http = Dio(options);
  http.interceptors
    ..add(HttpTokenInterceptor())
    ..add(HttpLoggingInterceptor());
}
