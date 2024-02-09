import 'package:flutter/material.dart';
import 'package:voiceverse/screens/chat_screen.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgd.png'), // Replace with your image path
            fit: BoxFit
                .cover, // This will cover the whole container, you might want to adjust it based on your needs
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 130),
            Text(
              'Best Personal            AI Assistant',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Image.asset(
                'assets/robo.png', // Replace with your robot image asset
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Text(
              'How can I help you?',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(331,
                    50), // double.infinity is the width and 50 is the height
                primary: Colors.white, // Background color
                onPrimary: Colors.black, // Text Color (Foreground color)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: Text(
                'Start a new chat',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
