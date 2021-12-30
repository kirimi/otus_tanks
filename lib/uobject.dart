/// Исключение когда свойство не найдено
class KeyNotFoundException implements Exception {
  KeyNotFoundException(this.message) : super();

  final String message;

  @override
  String toString() {
    return 'KeyNotFoundException{message: $message}';
  }
}

/// Исключение при ошибке хранилища значений
class StorageException implements Exception {
  StorageException(this.message) : super();

  final String message;

  @override
  String toString() {
    return 'StorageException{message: $message}';
  }
}

/// Интерфейс для UObject
abstract class UObjectBase {
  dynamic get(String key);
  void set(String key, dynamic value);
}

/// Универсальный объект с динамическими свойствами
/// если производится попытка прочитать свойство не найдено,
/// то выкидывает [KeyNotFoundException]
class UObject implements UObjectBase {
  final Map<String, dynamic> _properties = {};

  @override
  dynamic get(String key) {
    if (_properties.containsKey(key)) {
      return _properties[key];
    }
    throw KeyNotFoundException('Key $key not found');
  }

  @override
  void set(String key, dynamic value) {
    _properties[key] = value;
  }
}
