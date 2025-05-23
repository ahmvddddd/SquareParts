// ignore_for_file: valid_regexps

class TValidator {
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty) {
      return 'Email is required.';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //check for minimum password length
    if (value.length < 6) {
      return 'Password must be at leats 6 characters long';
    }

    //Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z'))) {
      return 'Password must contain at least one uppercase letter';
    }

    //check for numbers
    if (!value.contains(RegExp(r'[0-9'))) {
      return 'Password must contain at least one number';
    }

    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain special characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    //Phone number validation
    final phoneRegExp = RegExp(r'^\d{10$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }
}