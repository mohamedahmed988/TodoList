import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl.dart';

String setDate(String dateToCheck) {
  DateTime dateTime=DateTime.parse(dateToCheck);
  return intl.DateFormat("dd/MM/yyyy")
      .format(dateTime)
      .toString();
}

String setDate2(String dateToCheck) {
    var now = DateTime.parse(dateToCheck);
    var formatter = DateFormat.yMMMd('ar_SA');
    print(formatter.locale);
    return formatter.format(now);


  // DateTime dateTime=DateTime.parse(dateToCheck);
  // return intl.DateFormat(" MMM dd, yyyy")
  //     .format(dateTime)
  //     .toString();
}

String setTimeFormat(String dateToCheck) {
  var now = DateTime.parse(dateToCheck);
  var formatter = DateFormat.Hm('ar_SA');
  print(formatter.locale);
  return formatter.format(now);
}
String setDateFromDateTime(DateTime dateTime) {
  return intl.DateFormat("yyyy-MM-dd")
      .format(dateTime)
      .toString();
}

bool checkIfDatesEqualOrSecondIsGreat(DateTime first,String dateToCheck){
  DateTime second=DateTime.now();//DateTime.parse(dateToCheck);
  if(second.compareTo(first)>=0)
    return true;
  else
    return false;
}