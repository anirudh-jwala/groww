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
        primaryColor: const Color(0xFF00D09C),
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 56.0,
            color: Color(0xFF44475B),
            fontWeight: FontWeight.w100,
          ),
          displayLarge: TextStyle(
            fontSize: 56.0,
            color: Color(0xFF44475B),
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            color: Color(0xFF7A7C8A),
          ),
        ),
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
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 56.0,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w100,
          ),
          displayLarge: TextStyle(
            fontSize: 56.0,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            color: Color(0xFFFFFFFF),
          ),
        ),
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
