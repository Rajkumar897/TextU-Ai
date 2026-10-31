import 'package:flutter/material.dart';

void main() {
  runApp(const TextUAIApp());
}

class TextUAIApp extends StatelessWidget {
  const TextUAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextU-AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextU-AI Companion'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to TextU-AI!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your all-in-one smart AI companion for chat, photo-to-video conversion, and HD video upscaling.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  FeatureCard(title: 'AI Chat', icon: Icons.chat, color: Colors.blue),
                  FeatureCard(title: 'Photo to Video', icon: Icons.video_call, color: Colors.green),
                  FeatureCard(title: 'HD Upscale', icon: Icons.hd, color: Colors.orange),
                  FeatureCard(title: 'Earn Credits', icon: Icons.monetization_on, color: Colors.purple),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const FeatureCard({super.key, required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
