import 'package:bloc/bloc.dart';
import 'package:jomondos_home/src/domain/repositories/localstorage.repository.dart';
import 'package:jomondos_home/src/domain/services/auth.services.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginEvent>((event, emit) async {
      final AuthService _authService = AuthService(
          localStorageRepository: LocalStorageRepository("token_jomondos_home"));
      if (event is ValidateLogin) {
        // final user = await _authService.checkUser(event.username, event.passwd);
        // if (user.isNotEmpty) {
        //   emit(state.copyWith(auth: true, token: user['token'], user: user));
        // } else {
        //   emit(state.copyWith(auth: false, token: "", user: {}));
        // }
      }
    });
  }
}