import 'package:flutter/material.dart';
import 'package:projects/screens/home_screen.dart';
import 'package:projects/screens/features_page.dart';
import 'package:projects/screens/how_it_works_page.dart';

void main() {
  runApp(const AssistantBotApp());
}

class AssistantBotApp extends StatelessWidget {
  const AssistantBotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assistant Bot',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.blueAccent),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/features': (context) => const FeaturesPage(),
        '/how-it-works': (context) => const HowItWorksPage(),
      },
    );
  }
}
