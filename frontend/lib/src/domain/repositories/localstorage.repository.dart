import 'package:jomondos_home/src/domain/repositories/interfaces/futureLocalStorage.interface.dart';
import 'package:localstorage/localstorage.dart';

class LocalStorageRepository implements FutureLocalStorage {
  final LocalStorage _storage;

  LocalStorageRepository(String storageKey)
      : _storage = LocalStorage(storageKey);

  @override
  Future getAll(String key) async {
    await _storage.ready;
    return _storage.getItem(key);
  }

  @override
  Future<void> save(String key, dynamic value) async {
    await _storage.ready;
    return _storage.setItem(key, value);
  }
}
