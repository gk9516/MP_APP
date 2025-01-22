import 'package:flutter/material.dart';
import '../widgets/glowing_button.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('How It Works', style: TextStyle(color: Colors.blueAccent)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How It Works',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            const Text(
              '- Sensors detect the environment.',
              style: TextStyle(color: Colors.blueAccent),
            ),
            const Text(
              '- AI algorithms process and analyze data.',
              style: TextStyle(color: Colors.blueAccent),
            ),
            const Text(
              '- Actions are executed efficiently and effectively.',
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
