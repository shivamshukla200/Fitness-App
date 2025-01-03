import 'package:flutter/material.dart';
import 'kidd1.dart';
import 'kidd2.dart';
import 'kidd3.dart';

class KidSectionPage extends StatelessWidget {
  const KidSectionPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900, // Dark green background for AppBar
      ),
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.greenAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                // Title
                const Text(
                  'Choose Your Exercise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White color for heading
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: ListView(
                    children: [
                      ExerciseSectionWidget(
                        title: 'Exercise 1: High knees Exercise',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Kid1(
                                title: 'High Knees Exercise',
                              ),
                            ),
                          );
                        },
                      ),
                      ExerciseSectionWidget(
                        title: 'Exercise 2: Jumping Jack',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Kid2(
                                title: 'Jumping Jack Exercise',
                              ),
                            ),
                          );
                        },
                      ),
                      ExerciseSectionWidget(
                        title: 'Exercise 3: Frog Jump',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Kid3(
                                title: 'Frog Jump Exercise',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExerciseSectionWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ExerciseSectionWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Removed Image, keeping only Text
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22, // Increased font size for clarity
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, // Teal color for title text
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal, // Same teal color for icon
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
