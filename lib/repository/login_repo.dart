import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class LoginRepository {
  static Future<dynamic> login(Map<String, dynamic> body) async {
    /*  final response = await NetworkCall.makeCall(
     // endPoint: ServicesURLs.login_url,
   //   method: HttpMethod.POST,
     // requestBody: jsonEncode(body),
    );

    if (response['status'] >= 200 && response['status'] <= 299) {
      //return LoginResponse.fromJson(response);
    } else if (response['status'] == 422) {
      return 'Wrong Password';
    } else {
      return response['message'];
    }
  }*/
  }

  static Future<dynamic> singup(Map<String, dynamic> body) async {
    var url = Uri.parse('https://624c4bfcd71863d7a807c6f4.mockapi.io/users');
    final response = await http.post(
      url,
      body: jsonEncode(body),
    );
    log(response.toString());
    return response;

    /*  final response = await NetworkCall.makeCall(
     // endPoint: ServicesURLs.login_url,
   //   method: HttpMethod.POST,
     // requestBody: jsonEncode(body),
    );

    if (response['status'] >= 200 && response['status'] <= 299) {
      //return LoginResponse.fromJson(response);
    } else if (response['status'] == 422) {
      return 'Wrong Password';
    } else {
      return response['message'];
    }
  }*/
  }
}
