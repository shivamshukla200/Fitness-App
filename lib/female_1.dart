import 'package:flutter/material.dart';

class Female1 extends StatelessWidget {
  final String title;

  const Female1({super.key, required this.title});

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
                    'assets/Burpee.gif',  // Replace with your Burpee GIF asset path
                    fit: BoxFit.cover,     // Ensures the GIF fully covers its container.
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4),  // Dark overlay for better text visibility.
                  child: const Text(
                    'Burpee Exercise Tutorial',
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
                    'Advantages of Burpees:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                   Text(
                    '1. Full-body workout: Burpees engage multiple muscle groups, including your chest, arms, legs, and core.\n'
                    '2. Improves cardiovascular health: The high-intensity nature of burpees helps boost your heart rate and endurance.\n'
                    '3. Burns a lot of calories: Due to the intensity and full-body engagement, burpees are great for burning calories.\n'
                    '4. Builds strength and agility: Burpees help in building strength, coordination, and balance.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                    SizedBox(height: 20),
                     Text(
                    'Disadvantages of Burpees:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    SizedBox(height: 10),
                    Text(
                    '1. High-impact exercise: The jumping and landing involved can put strain on your joints, especially if you have existing joint issues.\n'
                    '2. May be difficult for beginners: Due to the intensity and coordination required, burpees can be challenging for beginners.\n'
                    '3. Risk of injury: If performed incorrectly, burpees can cause injuries, particularly to the wrists, back, and knees.\n'
                    '4. Can be exhausting: Burpees are physically demanding and might be difficult to perform for extended periods.',
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
