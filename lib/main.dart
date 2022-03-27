import 'package:flutter/material.dart';

// Splash screen
import 'package:flutter_native_splash/flutter_native_splash.dart';

// Pages
import 'package:groww/pages/authentication.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groww',
      theme: ThemeData(
        primaryColor: const Color(0xFF0abb92),
        fontFamily: 'Roboto',
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF96A8FD),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0abb92),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF96A8FD),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ),
      home: const AuthenticationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
