import 'package:dukkantek/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginProvider extends ChangeNotifier {
  Map<String, dynamic> loginInfo = {};
  bool isLoading = false;
  final googleSignIn = GoogleSignIn(
      scopes: ['email', "https://www.googleapis.com/auth/userinfo.profile"]);

  late GoogleSignInAccount _user;
  GoogleSignInAccount get user => _user;
  static LoginProvider of(BuildContext context, {bool listen = false}) {
    if (listen) return context.watch<LoginProvider>();
    return context.read<LoginProvider>();
  }

  Future<dynamic> login(
    BuildContext context,
  ) async {
    isLoading = true;
    notifyListeners();
  }

  Future googleLogin(BuildContext context) async {
    isLoading = true;
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
    
    
      return;
    
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  WelcomeScreen(nameUser: googleUser.displayName.toString())),
          (route) => false);
    }
    _user = googleUser;
    final googleAut = await googleUser.authentication;
    

    notifyListeners();
  }
}
