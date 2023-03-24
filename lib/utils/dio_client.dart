import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

var options = BaseOptions(
  baseUrl: dotenv.env['BASE_API_URL'] ?? '',
  // connectTimeout: 5000,
  // receiveTimeout: 5000,
  headers: {
    'Content-Type': 'application/json',
  },
  followRedirects: false,
);

Dio dio = Dio(options);
