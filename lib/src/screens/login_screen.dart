import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      );
    }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@domain.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      textColor: Colors.white,
      color: Colors.blueAccent,
      onPressed: () {},
      elevation: 5.0,
    );
  }
  
}