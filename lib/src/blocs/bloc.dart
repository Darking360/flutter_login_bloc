import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();


  
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid => Observable.combineLatest2(email, password, (e, p) => (e && p) == true);

  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeEmail => _emailController.sink.add;
  

  

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
  
}