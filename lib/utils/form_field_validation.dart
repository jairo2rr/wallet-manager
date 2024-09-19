abstract class ValidationStrategy {
  String? validate(String? value);
}

class EmailValidation implements ValidationStrategy {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter an email';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }
}

class PasswordValidation implements ValidationStrategy {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your password';
    }
    if (value.length < 6) {
      return 'At least 6 characters long';
    }
    return null;
  }
}

class SimpleValidation implements ValidationStrategy {
  @override
  String? validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Complete this field";
    }
    return null;
  }
}
