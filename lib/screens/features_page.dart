import 'package:flutter/material.dart';
import '../widgets/glowing_button.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Features', style: TextStyle(color: Colors.blueAccent)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Features',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            const Text(
              '- Voice Control: Interact with the bot using natural language commands.',
              style: TextStyle(color: Colors.blueAccent),
            ),
            const Text(
              '- Smart Navigation: Efficiently navigates its surroundings using sensors.',
              style: TextStyle(color: Colors.blueAccent),
            ),
            const Text(
              '- Real-Time Assistance: Provides real-time responses and data updates.',
              style: TextStyle(color: Colors.blueAccent),
            ),
            const SizedBox(height: 24),
            Center(
              child: GlowingButton(
                text: 'Back to Home',
                onPressed: () => Navigator.pushNamed(context, '/'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
