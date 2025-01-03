import 'package:flutter/material.dart';

class Kid3 extends StatelessWidget {
  final String title;

  const Kid3({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.orange, // Orange background for Kid section
      ),
      body: Column(
        children: [
          // Top Part: Exercise Tutorial with GIF
          Expanded(
            flex: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/frogjump.gif', // Replace with your GIF for Plank exercise
                    fit: BoxFit.cover, // Ensures the GIF fully covers its container
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4), // Dark overlay for better text visibility
                  child: const Text(
                    'Exercise Tutorial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Part: Exercise Advantages and Disadvantages
         const Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exercise Name: Frog Jump',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Advantages:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                   Text(
                    '1. Strengthens the core, shoulders, and back.\n'
                    '2. Improves posture and balance.\n'
                    '3. Can be done anywhere, no equipment needed.\n'
                    '4. Helps with flexibility and endurance.\n'
                    '5. Excellent for building overall body strength.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 10),
                   Text(
                    'Disadvantages:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1. Can cause strain in the lower back if performed incorrectly.\n'
                    '2. Requires good form to avoid injury.\n'
                    '3. Can be difficult for beginners to hold for long periods.\n'
                    '4. May put pressure on wrists if not done with proper technique.\n'
                    '5. Can lead to discomfort in the neck and shoulders if held too long.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
