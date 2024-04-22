import 'dart:developer' as developer;

import 'package:blank_app/core/core.dart';
import 'package:dio/dio.dart';

class HttpLoggingInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final request = response.requestOptions;
    developer.log(
      '${response.statusCode} - ${request.method} ${request.uri}',
      name: 'Http',
      level: LoggingLevel.info.value,
    );

    handler.next(response);
  }
}
