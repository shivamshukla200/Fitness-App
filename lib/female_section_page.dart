import 'package:flutter/material.dart';
import 'female_1.dart';
import 'female_2.dart';
import 'female_3.dart';

class FemaleSectionPage extends StatelessWidget {
  const FemaleSectionPage({super.key, required this.title});

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
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                // Exercise Cards
                Expanded(
                  child: ListView(
                    children: [
                      ExerciseSectionCard(
                        title: 'Exercise 1: Burpee',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Female1(
                                title: 'Burpee',
                              ),
                            ),
                          );
                        },
                      ),
                      ExerciseSectionCard(
                        title: 'Exercise 2: Leg Raise',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Female2(
                                title: 'Leg Raise',
                              ),
                            ),
                          );
                        },
                      ),
                      ExerciseSectionCard(
                        title: 'Exercise 3: Glute',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Female3(
                                title: 'Glute',
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

class ExerciseSectionCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ExerciseSectionCard({
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
                    color: Colors.teal, // Use the same teal color as in MaleSectionPage
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.teal, // Same teal icon color as in MaleSectionPage
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
