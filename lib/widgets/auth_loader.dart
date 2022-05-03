import 'package:flutter/material.dart';

// Animated text
import 'package:animated_text_kit/animated_text_kit.dart';

class AuthLoader extends StatefulWidget {
  const AuthLoader({Key? key}) : super(key: key);

  @override
  State<AuthLoader> createState() => _AuthLoaderState();
}

class _AuthLoaderState extends State<AuthLoader>
    with SingleTickerProviderStateMixin {
  Animation? sizeAnimation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();

    sizeAnimation = Tween(begin: 0.0, end: 55.0).animate(
      CurvedAnimation(
        parent: controller!,
        curve: Curves.ease,
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const investingOptionDuration = Duration(milliseconds: 2200);

    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF00D09C),
              ),
              height: 10.0,
              width: sizeAnimation!.value,
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: 180.0,
              height: 40.0,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText(
                    'Stocks',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  FadeAnimatedText(
                    'Direct Mutual Funds',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  FadeAnimatedText(
                    'ETFs',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  FadeAnimatedText(
                    'Gold',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  FadeAnimatedText(
                    'US Stocks',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  FadeAnimatedText(
                    'Fixed Deposits',
                    duration: investingOptionDuration,
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
