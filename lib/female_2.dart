import 'package:flutter/material.dart';

class Female2 extends StatelessWidget {
  final String title;

  const Female2({super.key, required this.title});

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
                    'assets/legraise.gif',  // Replace with your Leg Raise GIF asset path
                    fit: BoxFit.cover,       // Ensures the GIF fully covers its container.
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.4),  // Dark overlay for better text visibility.
                  child: const Text(
                    'Leg Raise Exercise Tutorial',
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
                    'Advantages of Leg Raises:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 10),
                   Text(
                    '1. Strengthens abdominal muscles: Leg raises are great for targeting the lower abdominal region.\n'
                    '2. Improves core stability: Regularly performing leg raises helps to build core strength and stability.\n'
                    '3. Can be done anywhere: No equipment is required, and leg raises can be done at home or in the gym.\n'
                    '4. Increases flexibility: Leg raises also help improve flexibility in your hip flexors and legs.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Disadvantages of Leg Raises:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 SizedBox(height: 10),
                  Text(
                    '1. Risk of lower back strain: If performed incorrectly, leg raises can put pressure on the lower back.\n'
                    '2. Can be challenging for beginners: The exercise may be difficult for those who lack core strength.\n'
                    '3. Limited upper body engagement: Leg raises primarily target the lower body and core, with minimal upper body activation.\n'
                    '4. May cause hip flexor tightness: Repeated leg raises without proper form can lead to tight hip flexors.',
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
