import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() => runApp(const YogaApp());

class YogaApp extends StatelessWidget {
  const YogaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class WelcomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/yoga_background.jpg'), // Add your background image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // Gradient Overlay
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.black.withOpacity(0.6),
//                   Colors.black.withOpacity(0.2),
//                 ],
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//               ),
//             ),
//           ),
//           // Foreground Content
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // App Title
//               Text(
//                 "Serenity",
//                 style: TextStyle(
//                   fontSize: 42,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   letterSpacing: 1.5,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               // Subtitle
//               Text(
//                 "Find Your Inner Peace",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white70,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               // Meditation Image/Icon
//               CircleAvatar(
//                 radius: 80,
//                 backgroundColor: Colors.white.withOpacity(0.8),
//                 child: Icon(
//                   Icons.self_improvement,
//                   color: Colors.deepPurple,
//                   size: 80,
//                 ),
//               ),
//               const SizedBox(height: 50),
//               // "Let's Start" Button
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => NextPage()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 50, vertical: 15),
//                   backgroundColor: Colors.deepPurple,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: const Text(
//                   "Let's Start",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//           // Footer
//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Text(
//               "Powered by Shivam Shukla",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.white70,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Next Page"),
//       ),
//       body: const Center(
//         child: Text(
//           "Welcome to the next page!",
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
