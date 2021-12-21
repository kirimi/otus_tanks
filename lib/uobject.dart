/// Исключение когда свойство не найдено
class KeyNotFoundException implements Exception {
  KeyNotFoundException(this.message) : super();

  final String message;

  @override
  String toString() {
    return 'KeyNotFoundException{message: $message}';
  }
}

/// Универсальный объект с динамическими свойствами
/// если производится попытка прочитать свойство не найдено,
/// то выкидывает [KeyNotFoundException]
class UObject {
  final Map<String, dynamic> _properties = {};

  dynamic get(String key) {
    if (_properties.containsKey(key)) {
      return _properties[key];
    }
    throw KeyNotFoundException('Key $key not found');
  }

  void set(String key, dynamic value) {
    _properties[key] = value;
  }
}
