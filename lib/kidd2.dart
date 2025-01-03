import 'package:flutter/material.dart';

class Kid2 extends StatelessWidget {
  final String title;

  const Kid2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.blue, // Light blue background for Kid section
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
                    'assets/jumping_jack_animation.gif', // Replace with your GIF for Jumping Jack exercise
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
         const  Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exercise Name: Jumping Jacks',
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
                    '1. Improves cardiovascular health.\n'
                    '2. Strengthens muscles in the legs, arms, and core.\n'
                    '3. Increases flexibility and coordination.\n'
                    '4. A great exercise to burn calories quickly.\n'
                    '5. Fun and easy exercise for kids to improve stamina.',
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
                    '1. May put pressure on joints, especially knees and ankles.\n'
                    '2. Can cause fatigue if done excessively.\n'
                    '3. Risk of injury if not performed with correct form.\n'
                    '4. Not ideal for kids with joint problems.\n'
                    '5. Overdoing the exercise may lead to discomfort in the hips or legs.',
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
