import 'package:dukkantek/provider/login_provider.dart';
import 'package:dukkantek/screens/auth/login/componets/login_conatiner.dart';
import 'package:dukkantek/widgets/custom_button.dart';
import 'package:dukkantek/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/';
  LoginScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final loginProvider = LoginProvider.of(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height / 3,
                  width: width / 3,
                  child: Center(
                    child: Container(
                      height: height / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                LgoinContainer()
              ],
            ),
          )),
    ));
  }
}
