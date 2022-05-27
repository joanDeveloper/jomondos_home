abstract class FutureLocalStorage {
  Future getAll(String key);
  Future<void> save(String key, dynamic item);
}