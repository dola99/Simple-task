import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class ProfileProvider extends ChangeNotifier {

  static ProfileProvider of(BuildContext context, {bool listen = false}) {
    if (listen) return context.watch<ProfileProvider>();
    return context.read<ProfileProvider>();
  }





 
}
