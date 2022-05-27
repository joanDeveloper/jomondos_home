part of 'login_bloc.dart';

class LoginState {
  final String token;
  final Map<String, dynamic> user;
  final bool auth;
  LoginState({this.auth = false, this.token = "", this.user = const {}});
  
  LoginState copyWith({
    String ? token,
    bool ? auth,
    Map<String, dynamic> ? user,
  })=> LoginState(
    user: user ?? this.user,
    token: token ?? this.token,
    auth: auth ?? this.auth
  );
}