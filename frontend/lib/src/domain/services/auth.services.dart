import 'package:jomondos_home/src/domain/repositories/interfaces/futureLocalStorage.interface.dart';
import 'localstorage.service.dart';

class AuthService {
  final LocalStorageService _localStorageService;
  AuthService({
    required FutureLocalStorage localStorageRepository,
  }) : _localStorageService =
            LocalStorageService(localStorageRepository: localStorageRepository);


  // Future<Map<String, dynamic>> checkUser(String username, String passwd) async {
    // 
  // }

  saveToken(String token) async {
    await _localStorageService.save("token_jomondos_home", token);
  }

  destroyToken() async {
    await _localStorageService.save("token_jomondos_home", "");
  }

  Future<String> getAuthenticatedLocalStorage() async {
    final token = await _localStorageService.getAll("token_jomondos_home");
    if(token.isNotEmpty){
      return token;
    }
    return "";
  }
}
