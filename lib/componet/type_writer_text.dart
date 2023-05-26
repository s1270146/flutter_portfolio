import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeWriterText extends StatelessWidget {
  const TypeWriterText({
    super.key,
    required this.displayText,
  });

  final String displayText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 60.0,
          fontFamily: 'Agne',
        ),
        child: AnimatedTextKit(
          totalRepeatCount: 20,
          onTap: () {
            print("check2");
          },
          pause: const Duration(milliseconds: 3000),
          animatedTexts: [
            TypewriterAnimatedText(
              displayText,
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              displayText.toUpperCase(),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              displayText.toLowerCase(),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ),
    );
  }
}
