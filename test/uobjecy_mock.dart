import 'package:tanks/uobject.dart';

/// Мок для UObject который возвращает исключение [StorageException]
/// при попытке записи/чтения
class UObjectMock implements UObjectBase {
  @override
  get(String key) {
    throw StorageException('Cannot read value form storage');
  }

  @override
  void set(String key, value) {
    throw StorageException('Cannot write value to storage');
  }
}
