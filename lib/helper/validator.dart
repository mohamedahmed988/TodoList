
bool validEmail(String email){
  return !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email);}


bool validArabic(String text){

  // return RegExp(r'(^[\u0621-\u064A\u0660-\u0669\1-9\-\ \,\،\.\(\)\\p{Punct} ]+$)').hasMatch(text);
  return RegExp(r'(^[\u0621-\u064A\u0660-\u0669\1-9\-\ \,\،\.\(\)\!@#<>?":_`~;[\]\\|=+)(*&^%0-9- ])').hasMatch(text.trim());

}



bool validPassword(String value){
  return value.trim().isNotEmpty && value.trim().length >= 3;
}

bool validCode(String value){
  return value.trim().isNotEmpty ;
}
bool validName(String value){
  return value.trim().isNotEmpty ;
}

bool validDouble(String value){
  var val=double.tryParse(value);


  return (value.trim().isNotEmpty&& val!=null );
}

bool validPhone(String value){
  return !(value.trim().isNotEmpty && value.trim().length == 10);
}


