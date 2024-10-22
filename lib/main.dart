import 'package:flutter/material.dart';
import 'views/main_view.dart';
import 'views/login_view.dart';
import 'views/welcome_view.dart';
import 'views/complaint_form_view.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beautiful App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MainView(),
      routes: {
        '/login': (context) => LoginView(),
        '/welcome': (context) => WelcomeView(),
        '/complaint': (context) => ComplaintFormView(), 
      },
    );
  }
}
