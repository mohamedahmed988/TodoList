import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../constants/fontSize.dart';


 pushNamedRoute(BuildContext context, String route,{arguments}) {
  Navigator.of(context).pushNamed(route,arguments: arguments);
}

void pushReplacementNamedRoute(BuildContext context, String route,{arguments}) {
  Navigator.of(context).pushReplacementNamed(route, arguments: arguments);
}

void navigateAndDeleteAllBackStacks(String route, BuildContext context,{arguments}) {
  SchedulerBinding.instance?.addPostFrameCallback((_) async {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false, arguments: arguments);
  });
}

void popRoute(BuildContext context) {
  Navigator.of(context).pop();
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(fontSize: SIZE16))));
}

pushNewScreen(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}
pushAndReplaceNewScreen(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}


