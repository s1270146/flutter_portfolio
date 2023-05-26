import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_portfolio/componet/type_writer_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double textWidth =
        MediaQuery.of(context).size.width > 500 ? 400 : 200;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.only(
            top: 100,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: textWidth,
                  child: const TypeWriterText(displayText: 'Profile'),
                ),
                SizedBox(
                  width: textWidth,
                  child: const TypeWriterText(displayText: 'Works'),
                ),
                SizedBox(
                  width: textWidth,
                  child: const TypeWriterText(displayText: 'Blog'),
                ),
                SizedBox(
                  width: textWidth,
                  child: const TypeWriterText(displayText: 'Research'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
