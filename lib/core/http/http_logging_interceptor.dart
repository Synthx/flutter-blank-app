import 'package:blank_app/core/core.dart';
import 'package:dio/dio.dart';

class HttpLoggingInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final request = response.requestOptions;
    Logging.info(
      '${response.statusCode} - ${request.method} ${request.uri}',
      name: 'Http',
    );

    return handler.next(response);
  }
}
