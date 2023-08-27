import 'package:flutter/material.dart';
import 'package:flutter_application_1/intro_screen.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final IO.Socket socket =
      IO.io('http://62.217.182.138:3000', <String, dynamic>{
    'transports': ['websocket'],
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(socket),
    );
  }
}
