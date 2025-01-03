import 'package:flutter/material.dart';

class Male3 extends StatelessWidget {
  final String title;

  const Male3({super.key, required this.title});

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
                  'assets/plank.gif', // Update to GIF path
                  fit: BoxFit.cover,  // Ensures GIF covers the container
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4), // Dark overlay for text visibility
                  child: const Text(
                    'Plank Tutorial', // Overlay text
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
                    'Exercise Name: Plank',
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
                    '1. Strengthens the core, including abs, back, and shoulders.\n'
                    '2. Improves posture and reduces back pain.\n'
                    '3. Enhances balance and stability.\n'
                    '4. Requires no equipment and can be done anywhere.\n'
                    '5. Helps in building endurance and stamina.',
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
                    '1. Improper form can lead to neck or lower back strain.\n'
                    '2. May be challenging for individuals with weak wrists or shoulders.\n'
                    '3. Can become monotonous without variations.\n'
                    '4. Overexertion might cause muscle fatigue.\n'
                    '5. Not ideal for those with pre-existing injuries without modifications.',
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
