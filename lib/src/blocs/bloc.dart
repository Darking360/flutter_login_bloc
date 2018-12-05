import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid => Observable.combineLatest2(email, password, (e, p) => true);

  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }

  submit() {

  }
  
}