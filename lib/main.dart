import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';

import 'package:phone_auth_provider/provider/auth_provider.dart';
import 'package:phone_auth_provider/screens/auth_screen.dart';
import 'package:phone_auth_provider/screens/home_screen.dart';
import 'package:phone_auth_provider/screens/verify_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: AuthProvider(),
      child: MaterialApp(
        supportedLocales: [
          Locale('en'),
          Locale('it'),
          Locale('fr'),
          Locale('es'),
        ],
        localizationsDelegates: [
          CountryLocalizations.delegate,
        ],
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'oswald',
          primaryColor: Colors.black,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
              actionsIconTheme: IconThemeData(
                color: Colors.black,
              ),
              iconTheme: IconThemeData(color: Colors.black)),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthScreen(),
        routes: {
          VerifyScreen.routeArgs: (ctx) => VerifyScreen(),
          HomeScreen.routeArgs: (ctx) => HomeScreen(),
        },
      ),
    );
  }
}
