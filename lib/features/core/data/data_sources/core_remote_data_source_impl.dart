import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/models.dart';
import 'core_remote_data_source.dart';

class CoreRemoteDataSourceImpl implements CoreRemoteDataSource {
  final String baseApiUrl = dotenv.get('BASE_API_URL');
  final Dio client;

  CoreRemoteDataSourceImpl({required this.client});

  @override
  Future<bool> initApp() async {
    try {
      final response = await client.post(
        '$baseApiUrl/core/User/getCode',
        data: {"attributes": {}},
      );
      if (response.statusCode == 200) {
        // final jsonMap = response.data as Map<String, dynamic>;
        return true;
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        final jsonMap = e.response?.data as Map<String, dynamic>;
        throw UserException(code: jsonMap['code'], message: jsonMap['message']);
      }
      throw ServerException();
    }
    throw ServerException();
  }
}
