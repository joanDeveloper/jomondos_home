import 'package:jomondos_home/src/domain/repositories/interfaces/futureLocalStorage.interface.dart';

class LocalStorageService {
  LocalStorageService({required FutureLocalStorage localStorageRepository})
      : _localStorageRepository = localStorageRepository;

  final FutureLocalStorage _localStorageRepository;

  Future<String> getAll(String key) async {
    final data = await _localStorageRepository.getAll(key);
    if (data != null) {
      return data;
    }
    return "";
  }

  Future<void> save(String key, dynamic item) async {
    await _localStorageRepository.save(key, item);
  }
}
