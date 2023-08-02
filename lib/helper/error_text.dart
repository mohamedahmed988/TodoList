String getErrorString(Map<String, dynamic> errors) {
  if (errors.containsKey('phone'))
    return errors['phone'][0].toString();
  else if (errors.containsKey('phone_number'))
    return errors['phone_number'][0].toString();
  else if (errors.containsKey('email'))
    return errors['email'][0].toString();
  else if (errors.containsKey('password'))
    return errors['password'].toString();
  else if (errors.containsKey('phone_number'))
    return errors['phone_number'].toString();
  else if (errors.containsKey('password_confirmation'))
    return errors['password_confirmation'].toString();
  else if (errors.containsKey('avatar'))
    return errors['avatar'].toString();
  else if (errors.containsKey('phone_country_code'))
    return errors['phone_country_code'].toString();
  return "";
}
