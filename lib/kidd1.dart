import 'package:flutter/material.dart';

class Kid1 extends StatelessWidget {
  final String title;

  const Kid1({super.key, required this.title});

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
                    'assets/Highknees.gif', // Replace with your GIF for high knee exercise
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
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Exercise Name: High Knees',
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
                    '1. Improves cardiovascular fitness.\n'
                    '2. Strengthens leg muscles, especially thighs and hips.\n'
                    '3. Increases flexibility in the hips.\n'
                    '4. Enhances overall coordination and balance.\n'
                    '5. A fun and energetic exercise for kids to improve stamina.',
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
                    '1. Can cause strain on knees if performed incorrectly.\n'
                    '2. May lead to muscle fatigue if done excessively.\n'
                    '3. Not suitable for kids with knee problems.\n'
                    '4. Risk of losing balance if the exercise is done too fast.\n'
                    '5. Overdoing the exercise may cause discomfort in the hips or thighs.',
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
