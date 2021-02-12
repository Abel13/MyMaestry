import 'package:first/themes/app.theme.dart';
import 'package:first/views/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(primarySwatch: Colors.blue), home: HomePage());
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: SigninPage());
  }
}
