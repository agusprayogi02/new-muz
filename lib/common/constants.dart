import 'package:reactive_forms/reactive_forms.dart';

class Constants {
  static final Map<String, String Function(Object)> messageErrors = {
    ValidationMessage.required: (_) => 'Inputan ini tidak boleh kosong',
    ValidationMessage.email: (_) => 'Email tidak valid',
    ValidationMessage.number: (_) => 'Inputan hanya boleh angka',
    ValidationMessage.minLength: (e) => "Minimal ${(e as Map)['requiredLength']} karakter",
    ValidationMessage.maxLength: (e) => 'Maksimal ${(e as Map)['requiredLength']} karakter',
    'validation_error': (e) => (e as String),
  };
  static const List<Map<String, String>> countries = [
    {"code": "us", "name": "United States"},
    {"code": "id", "name": "Indonesia"},
    {"code": "gb", "name": "United Kingdom"},
    {"code": "jp", "name": "Japan"},
    {"code": "au", "name": "Australia"},
    {"code": "fr", "name": "France"},
    {"code": "de", "name": "Germany"},
    {"code": "it", "name": "Italy"},
    {"code": "ru", "name": "Russia"},
    {"code": "in", "name": "India"},
    {"code": "cn", "name": "China"},
    {"code": "kr", "name": "South Korea"},
    {"code": "br", "name": "Brazil"},
    {"code": "ca", "name": "Canada"},
    {"code": "za", "name": "South Africa"},
  ];
}
