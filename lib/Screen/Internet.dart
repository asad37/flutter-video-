import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class internet {
  bool connected = false;

  checkInterNetCon() async {
    connected = await InternetConnectionChecker().hasConnection;
    final msg = connected ? "Connnected to Internet" : "no connect to Internet";
    showSimpleNotification(Text("${msg}"));
  }
}
