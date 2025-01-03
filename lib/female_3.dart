import 'package:flutter/material.dart';

class Female3 extends StatelessWidget {
  final String title;

  const Female3({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                    'assets/glute.gif',  // Replace with your Glute Bridge GIF asset path
                    fit: BoxFit.cover,    // Ensures the GIF fully covers its container.
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4),  // Dark overlay for better text visibility.
                  child: const Text(
                    'Glute Bridge Exercise Tutorial',
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
                    'Advantages of Glute Bridges:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 10),
                  Text(
                    '1. Strengthens the glutes, hamstrings, and lower back muscles.\n'
                    '2. Improves core stability and posture.\n'
                    '3. Can help alleviate lower back pain by strengthening muscles in the hips and back.\n'
                    '4. Can be performed anywhere without equipment.\n'
                    '5. Helps improve flexibility and mobility in the hips and lower body.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Disadvantages of Glute Bridges:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 10),
                   Text(
                    '1. Can be difficult for beginners who have weak glutes or hamstrings.\n'
                    '2. Performing incorrectly can lead to lower back strain.\n'
                    '3. Limited upper body engagement.\n'
                    '4. May cause discomfort in the lower back if done excessively without proper form.',
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
