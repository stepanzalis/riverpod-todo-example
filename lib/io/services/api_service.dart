import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider((ref) => TodoDio());

class TodoDio with DioMixin implements Dio {
  TodoDio() {
    httpClientAdapter = DefaultHttpClientAdapter();
    options = BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com");
    interceptors.add(PrettyDioLogger());
  }
}
