import 'package:flutter/material.dart';
import '../widgets/glowing_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Welcome to Assistant Bot',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Glowing Circle Graphic
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.8),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.assistant,
                    size: 80,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Welcome Text
              const Text(
                'Meet the Future of Smart Assistants',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Discover the innovative features and capabilities of Assistant Bot.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ),
              const SizedBox(height: 40),
              // Buttons with Glow Effect
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GlowingButton(
                    text: 'Features',
                    onPressed: () => Navigator.pushNamed(context, '/features'),
                  ),
                  GlowingButton(
                    text: 'How It Works',
                    onPressed: () => Navigator.pushNamed(context, '/how-it-works'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
