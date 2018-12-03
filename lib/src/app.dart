import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Provider(
        child: MaterialApp(
        title: 'Let me Log In!',
        home: Scaffold(
            body: Center(
              child: LoginScreen(),
            ),
          ),
        )
      );
    }
}