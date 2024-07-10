
// Email validation 

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email is required';
  }

  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if (!emailRegExp.hasMatch(value)) {
    return 'Invalid email address';
  }

  return null;
}

// Password validation 
String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password is required';
  }

  // Check if the password meets your criteria
  if (password.length < 8) {
    return 'Password must be at least 8 characters long';
  }

  // You can add more criteria, such as requiring special characters, uppercase, or lowercase letters
  if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password)) {
    return 'Password must contain at least one special character';
  }

  return null;
}

// Phone Number Validation 
String? validatePhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return 'Phone number is required';
  }

  // Use a regular expression to check the format of the phone number
  // In this example, it validates a simple case where it should contain only digits and have a length between 8 and 15 characters
  if (!RegExp(r'^[0-9]{8,15}$').hasMatch(phoneNumber)) {
    return 'Invalid phone number';
  }

  return null;
}

// Future validations will be added
