
import 'package:flutter/material.dart';
import 'male_section_page.dart';
import 'female_section_page.dart';
import 'kid_section_page.dart';
import 'MentorSectionPage.dart';
import 'SignInScreen.dart';
import 'ChatbotPage.dart';
import 'package:flutter_gemini/flutter_gemini.dart';


const GEMINI_API_KEY = 'AIzaSyCAY18Eg1Uxuc6cJSGG9EF7OI4vSV8CmLg';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Fitness App'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'logout') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'logout',
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          // Gradient background
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
                // Welcome banner
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Welcome to Fitness App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: [
                      SectionCard(
                        title: 'Male',
                        imageUrl: 'assets/male icon.jpg',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MaleSectionPage(
                                title: 'Male Section Exercises',
                              ),
                            ),
                          );
                        },
                      ),
                      SectionCard(
                        title: 'Female',
                        imageUrl: 'assets/female icon.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FemaleSectionPage(
                                title: 'Female Exercises',
                              ),
                            ),
                          );
                        },
                      ),
                      SectionCard(
                        title: 'Kid',
                        imageUrl: 'assets/kidicon.jpg',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const KidSectionPage(
                                title: 'Kid Exercises',
                              ),
                            ),
                          );
                        },
                      ),
                      MentorCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MentorSectionPage(),
                            ),
                          );
                        },
                      ),
                      AiGuidanceCard(
                        onTap: () {
                          // Initialize Gemini API and navigate to ChatbotPage
                          Gemini.init(apiKey: GEMINI_API_KEY);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatbotPage(),
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

class SectionCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const SectionCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final VoidCallback onTap;

  const MentorCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal.shade700,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child:const  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              Icons.support_agent,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              'Mentor Support',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AiGuidanceCard extends StatelessWidget {
  final VoidCallback onTap;

  const AiGuidanceCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.deepPurple, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              Icons.smart_toy,
              size: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              'Fitness Guide',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

