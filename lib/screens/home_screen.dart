import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static const routeArgs ='/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome to home'),
      ),
    );
  }
}
