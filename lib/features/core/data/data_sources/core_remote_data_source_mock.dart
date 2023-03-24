import 'core_remote_data_source.dart';

class CoreRemoteDataSourceMock implements CoreRemoteDataSource {
  CoreRemoteDataSourceMock();

  @override
  Future<bool> initApp() async {
    if (true) {
      return true;
    }
    // } else if (true) {
    //   throw UserException(code: 400, message: 'user error');
    // } else {
    //   throw ServerException();
    // }
  }
}
