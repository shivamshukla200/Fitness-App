import 'package:flutter/material.dart';
import 'dart:async'; // For Timer
import 'SignInScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch:Colors.teal,
        useMaterial3: true,
      ),
      home: SplashScreen(), 
      debugShowCheckedModeBanner: false,
    );
  }
}

// SplashScreen class
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _logoAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      duration:const  Duration(seconds: 5),
      vsync: this,
    );

    _logoAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();

    
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 51, 141, 189), // Light green
              Color.fromARGB(255, 64, 92, 208), // Green
              Color.fromARGB(255, 27, 86, 94), // Dark green
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated logo
            ScaleTransition(
              scale: _logoAnimation,
              child: Image.asset(
                "assets/applogo.jpg", // Replace with your app's logo
                height: 150,
                width: 150,
              ),
            ),
            const SizedBox(height: 20),
            // App Title
            const Text(
              "Fitness App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Embrace Wellness and Mindfulness",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// SignInScreen class
// class SignInScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sign In"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Placeholder for SignIn action
//             print('Sign in button pressed');
//           },
//           style: ElevatedButton.styleFrom(
//             // primary: Colors.green, // Button background color
//             // onPrimary: Colors.white, // Text color
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//           ),
//           child: Text(
//             "Sign In",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
