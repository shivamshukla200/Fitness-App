import 'package:flutter/material.dart';

class Male4 extends StatelessWidget {
  final String title;

  const Male4({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Top Part: Exercise Tutorial with GIF
          Expanded(
            flex: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/lunges.gif', // Path to the GIF
                  fit: BoxFit.cover,   // Ensures the GIF covers the container
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4), // Dark overlay for better text visibility
                  child: const Text(
                    'Lunges Tutorial', // Overlay text
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
                    'Exercise Name: Lunges',
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
                    '1. Strengthens the thighs, hips, and buttocks.\n'
                    '2. Improves balance and coordination.\n'
                    '3. Enhances lower body flexibility.\n'
                    '4. Helps in building core stability.\n'
                    '5. Can be performed with or without weights, making it versatile.',
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
                    '1. Incorrect form can strain the knees or hips.\n'
                    '2. May be difficult for individuals with joint pain.\n'
                    '3. Requires balance, which can be challenging for beginners.\n'
                    '4. Overdoing lunges can cause muscle fatigue.\n'
                    '5. Not suitable for individuals with certain lower body injuries without modifications.',
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
