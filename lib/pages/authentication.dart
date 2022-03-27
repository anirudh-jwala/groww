import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40.0),
                SvgPicture.asset(
                  "assets/images/groww-logo-svg.svg",
                  semanticsLabel: 'Groww',
                  width: 130,
                  height: 30,
                ),
                const SizedBox(height: 40.0),
                const Text(
                  "Simple",
                  style: TextStyle(
                    fontSize: 56.0,
                    color: Color(0xFF44475B),
                    fontWeight: FontWeight.w100,
                  ),
                ),
                const Text(
                  "investing.",
                  style: TextStyle(
                    fontSize: 56.0,
                    color: Color(0xFF44475B),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20.0),
                const AuthLoader(),
                const SizedBox(height: 50.0),
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
                            fontWeight: FontWeight.w500,
                            decorationColor: Color(0xFF44475B),
                          ),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
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
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/google-color.svg",
                      width: 25.0,
                      height: 25.0,
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
                        horizontal: 80.0,
                        vertical: 14.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Continue with Other Email",
                    style: TextStyle(
                      color: Color(0xFF00D09C),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
