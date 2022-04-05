import 'package:dukkantek/provider/login_provider.dart';
import 'package:dukkantek/widgets/custom_button.dart';
import 'package:dukkantek/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupConainter extends StatefulWidget {
  SignupConainter({Key? key}) : super(key: key);

  @override
  State<SignupConainter> createState() => _SignupConainterState();
}

class _SignupConainterState extends State<SignupConainter> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final loginProvider = LoginProvider.of(context);
    return Form(
      key: _formKey,
      child: Column(children: [
        CustomTextFormField(
          hintText: 'Email Or PhoneNumber',
          onSaved: (value) {
            loginProvider.signupInfo['username'] = value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "The field Can't be Empty";
            } else {
              return null;
            }
          },
        ),
        SizedBox(
          height: height * .01,
        ), CustomTextFormField(
          hintText: 'Name',
          onSaved: (value) {
            loginProvider.signupInfo['name'] = value;
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "The field Can't be Empty";
            } else {
              return null;
            }
          },
        ),
        SizedBox(
          height: height * .01,
        ),
        CustomTextFormField(
          hintText: 'password',
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "The field Can't be Empty";
            } else if (value.length < 8) {
              return 'Must be at Least 8 chr';
            }
            return null;
          },
          onSaved: (value) {
            loginProvider.signupInfo['password'] = value;
          },
        ),
        SizedBox(
          height: height * .01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {},
            child: LoginProvider.of(context, listen: true).isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : CustomButtom(
                    height: height * .055,
                    width: double.infinity,
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                         _formKey.currentState!.save();
                          var response =
                              await LoginProvider.of(context).signup(context);
                          /*if (response.runtimeType == LoginResponse) {
                            
                           
                          
                          } else {
                            
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '$response',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }*/
                      }
                    },
                    color: const Color.fromRGBO(0, 155, 114, 1),
                    textcolor: Colors.white,
                    fontSize: MediaQuery.of(context).textScaleFactor * 16,
                    titleText: "Sign in"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {},
            child: LoginProvider.of(context, listen: true).isLoading
                ? const SizedBox()
                : CustomButtom(
                    height: height * .055,
                    width: double.infinity,
                    onPressed: () async {
                      await LoginProvider.of(context).googleLogin(context);
                    },
                    color: const Color.fromRGBO(0, 155, 114, 1),
                    textcolor: Colors.white,
                    fontSize: MediaQuery.of(context).textScaleFactor * 16,
                    titleText: "Google Sign in"),
          ),
        ),
      ]),
    );
  }
}
