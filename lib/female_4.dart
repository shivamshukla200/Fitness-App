import 'package:flutter/material.dart';

class Female4 extends StatelessWidget {
  final String title;

  const Female4({super.key, required this.title});

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
          // Top Part: Exercise Tutorial
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                image: const DecorationImage(
                  image: AssetImage('assets/pushup.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Exercise Tutorial',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),

          // Bottom Part: Exercise Description
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: const Column(
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
                    'Description: Push-ups are a basic exercise used in civilian athletic training or physical education and commonly in military physical training. They are performed by raising and lowering the body using the arms.',
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 10),
                   Text(
                    'Steps:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 1),
                   Text(
                    '1. Start in a high plank position.\n'
                        '2. Keep your core tight and back flat.\n'
                        '3. Lower your body until your chest nearly touches the floor.\n'
                        '4. Push back up to the starting position.',
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
