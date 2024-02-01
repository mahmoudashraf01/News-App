import 'package:dio/dio.dart';

Future<bool> isValidNetworkImage({required String url}) async {
  final Dio dio = Dio();
  try {
    Response response = await dio.head(url);
    return response.statusCode == 200;
  } catch (error) {
    return false;
  }
}