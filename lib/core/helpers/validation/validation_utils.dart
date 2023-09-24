class ValidationUtils {
  static String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value!.trim().isEmpty) {
      return 'Please Enter Your Email Address';
    } else if (!regex.hasMatch(value))
      return 'Incorrect Email Address';
    else
      return null;
  }

  static String? validatePassword(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    if (value!.trim().isEmpty) {
      return 'Please Enter Password';
    } else if (value.length < 10) {
      return 'Password must be 10 characters';
    } else if (!regExp.hasMatch(value)) {
      return 'Password must contain at least one uppercase character one lowercase character one number and one special character';
    }
    return null;
  }

  static String? requiredField(String? value, String message) {
    if (value!.trim().isEmpty) {
      return message + "\tRequired";
    }
    return null;
  }

  static bool isValidMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[+0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.trim().isEmpty || value.length == 0 || !regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }

  static String? isValidateMobile(String? value, String name) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.trim().isEmpty || value.length == 0) {
      return 'Please enter $name';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid $name';
    }
    return null;
  }
}
