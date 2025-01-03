import 'package:flutter/material.dart';

class Male2 extends StatelessWidget {
  final String title;

  const Male2({super.key, required this.title});

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
                  'assets/squatsgif.gif', // Update path to GIF
                  fit: BoxFit.cover, // Ensures the GIF covers the container
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4), // Dark overlay for text visibility
                  child: const Text(
                    'Squats Tutorial', // Text overlay
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
                    'Exercise Name: Squats',
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
                    '1. Builds lower body strength (quads, hamstrings, glutes).\n'
                    '2. Enhances core stability and balance.\n'
                    '3. Improves mobility and flexibility in hips and ankles.\n'
                    '4. Promotes functional strength for everyday activities.\n'
                    '5. Boosts calorie burn and improves cardiovascular health when done in high reps.',
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
                    '1. Risk of knee or back injury with improper form.\n'
                    '2. Overuse can lead to joint strain.\n'
                    '3. May be challenging for beginners or those with limited mobility.\n'
                    '4. Requires proper warm-up to prevent injury.\n'
                    '5. Imbalances or weaknesses in other muscles can hinder performance.',
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
