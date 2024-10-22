import 'package:flutter/material.dart';
import 'views/main_view.dart';
import 'views/login_view.dart';
import 'views/welcome_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INICIO DE SESION ESTATICO',
      theme: ThemeData(
        primarySwatch: Colors.teal, 
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.teal),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal, 
            foregroundColor: Colors.white,  
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), 
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(15),
          ),
          labelStyle: TextStyle(color: Colors.teal),
        ),
      ),
      home: MainView(),
      routes: {
        '/login': (context) => LoginView(),
        '/welcome': (context) => WelcomeView(),
      },
    );
  }
}
