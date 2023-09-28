class Validator {
  errorText(String oldPass, String name) {
    var otext = oldPass;
    if (otext.isEmpty || otext.length < 6) {
      return '$name cannot be less than 6';
    }

    if (otext.length > 40) {
      return '$name cannot be greater than 20';
    }
    return null;
  }

  errorTextC(String cPass, String nPass, String name) {
    var ctext = cPass;
    var ntext = nPass;
    if (ctext.isEmpty) {
      return '$name Can\'t be empty';
    }
    if (ctext.length < 6) {
      return '$name cannot be less than 6';
    }
    if (ctext.length > 40) {
      return '$name cannot be greater than 20';
    }
    if (ctext != ntext) {
      return '$name must equal New Passwd.';
    }
    return null;
  }

  errorEmail(String text) {
    var email = text;
    if (email.isEmpty || email.length < 6) {
      return 'email cannot be less than 6';
    }

    if (email.length > 20) {
      return 'email cannot be greater than 20 chraracter';
    }

    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!(regex.hasMatch(text))) {
      return "Invalid Email";
    }

    return null;
  }
}
