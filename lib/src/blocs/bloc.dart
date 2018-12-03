import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get changeEmail => _emailController.sink.add;
  Stream<String> get email => _emailController.stream.transform(validateEmail);

  Function(String) get changePassword => _passwordController.sink.add;
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
  
}

final bloc = Bloc();