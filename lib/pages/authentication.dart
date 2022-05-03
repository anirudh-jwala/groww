import 'package:flutter/material.dart';
import 'package:groww/pages/dashboard.dart';

// Widgets
import 'package:groww/widgets/auth_loader.dart';

// Outside packages
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/groww-logo-svg.svg",
              semanticsLabel: 'Groww',
              width: 150,
              height: 40,
            ),
            const SizedBox(height: 80.0),
            Text(
              "Simple",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "investing.",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 30.0),
            const AuthLoader(),
            const SizedBox(height: 30.0),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: const TextSpan(
                  text: 'By proceeding, I agree to the ',
                  style: TextStyle(
                    color: Color(0xFF7C7E8C),
                  ),
                  children: [
                    TextSpan(
                      text: 'T&C',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        decorationColor: Color(0xFF44475B),
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        decorationColor: Color(0xFF44475B),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                onPressed: () async {
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DashboardPage(),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  "assets/images/google-color.svg",
                  semanticsLabel: "Login with Google",
                  width: 25,
                  height: 25,
                ),
                label: const Text(
                  "Continue with Google",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 14.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Use Other Email ID",
                style: TextStyle(
                  color: Color(0xFF00D09C),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
