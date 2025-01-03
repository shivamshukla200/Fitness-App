import 'package:flutter/material.dart';

class Male1 extends StatelessWidget {
  final String title;

  const Male1({super.key, required this.title});

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
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/pushup animation.gif', // Replace with your GIF asset path
                    fit: BoxFit.cover, // Ensures the GIF fully covers its container.
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4), // Dark overlay for better text visibility.
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
                    'Exercise Name: Push-ups',
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
                    '1. Improves upper body strength (chest, shoulders, triceps).\n'
                    '2. Enhances core stability and balance.\n'
                    '3. Can be performed anywhere, no equipment needed.\n'
                    '4. Versatile with many variations for progression.\n'
                    '5. Boosts cardiovascular health when done rapidly.',
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
                    '1. Risk of injury with poor form.\n'
                    '2. Limited lower body engagement.\n'
                    '3. Overuse can lead to shoulder or wrist strain.\n'
                    '4. May lead to muscle imbalance without complementary exercises.\n'
                    '5. Beginners might find it difficult to perform correctly.',
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
