import 'package:dukkantek/provider/login_provider.dart';
import 'package:dukkantek/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
      ],
      child: const StartPoint(),
    ),
  );
}

class StartPoint extends StatelessWidget {
  const StartPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
