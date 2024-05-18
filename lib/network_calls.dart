// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkCalls {
  Dio dio = Dio();
  static String baseUrl = 'http://192.168.29.40:3000/api/v1';

  static String getOTPApi = '$baseUrl/login/getOtp';
  static String verifyOTPApi = '$baseUrl/login/verifyOtp';

  Future<Response?> getOTP({String? mobile}) async {
    try {
      Response response = await dio.post(getOTPApi, data: {'mobile': mobile});
      print(response.data);
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> verifyOtp(
      {String? moible, String? otp, required String mobile}) async {
    try {
      print([mobile, otp, verifyOTPApi]);
      Response response =
          await dio.post(verifyOTPApi, data: {'mobile': mobile, 'otp': otp});
      print(response.data);
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> getprofile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Options options = Options(headers: {
      'Authorization': 'Bearer ${sharedPreferences.getString('token')}'
    });
    try {
      Response response = await dio.get('$baseUrl/profile', options: options);
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> updateProfile({name, email}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Options options = Options(headers: {
      'Authorization': 'Bearer ${sharedPreferences.getString('token')}'
    });
    try {
      Response response =
          await dio.put('$baseUrl/profile', options: options, data: {
        'name': name,
        'email': email,
      });
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
