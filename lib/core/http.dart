import 'package:dio/dio.dart';

final _options = BaseOptions(
  baseUrl: 'https://jsonplaceholder.typicode.com',
);

final http = Dio(_options);
