import 'package:first/store/app.store.dart';
import 'package:first/themes/app.theme.dart';
import 'package:first/views/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(
          value: AppStore(),
        ),
      ],
      child: MaterialApp(
          // theme: ThemeData(primarySwatch: Colors.blue), home: HomePage());
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: SigninPage()),
    );
  }
}
