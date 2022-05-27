part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}


class ValidateLogin extends LoginEvent {
  final String username;
  final String passwd;
  ValidateLogin(this.username,this.passwd);
}