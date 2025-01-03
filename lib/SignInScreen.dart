// import 'package:flutter/material.dart';
// import 'second.dart';
// import 'package:flutter/services.dart';

// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   TextEditingController _passwordTextController = TextEditingController();
//   TextEditingController _emailTextController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.teal,
//               Colors.teal,
//               Colors.teal,
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(
//                 20, MediaQuery.of(context).size.height * 0.1, 20, 0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 // Welcome Text at the top
//                const  Text(
//                   "Welcome to Fitness App",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 // Logo section
//                 const SizedBox(
//                   height: 60,
//                 ),
//                const  CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.transparent,
//                   backgroundImage: AssetImage('assets/logo.png'), // Add your logo image
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 // Email text field
//                 TextField(
//                   controller: _emailTextController,
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: "Email Address",
//                     labelStyle:const  TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     prefixIcon:const  Icon(Icons.person_outline, color: Colors.white),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide:const  BorderSide(color: Colors.white),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: const BorderSide(color: Colors.green),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.2),
//                   ),
//                   style:const  TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 // Password text field
//                 TextField(
//                   controller: _passwordTextController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: "Password",
//                     labelStyle: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     prefixIcon:const  Icon(Icons.lock_outline, color: Colors.white),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide: const BorderSide(color: Colors.white),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       borderSide:const  BorderSide(color: Colors.green),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.2),
//                   ),
//                   style:const  TextStyle(color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 // Sign In button
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_validateInputs()) {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const FrontPage(),
//                         ),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 7, 52, 69), // Button color
//                     padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: const Text(
//                     "Sign In",
//                     style: TextStyle( color: Colors.white ,fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 // Forgot Password
//                 TextButton(
//                   onPressed: () {
//                     // Add functionality for forgot password if needed
//                   },
//                   child: const Text(
//                     "Forgot Password?",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   bool _validateInputs() {
//     final email = _emailTextController.text.trim();
//     final password = _passwordTextController.text.trim();

//     // Email validation
//     if (email.isEmpty) {
//       _showErrorSnackBar("Email cannot be empty");
//       return false;
//     }
//     if (!_isValidEmail(email)) {
//       _showErrorSnackBar("Enter a valid email address");
//       return false;
//     }

//     // Password validation
//     if (password.isEmpty) {
//       _showErrorSnackBar("Password cannot be empty");
//       return false;
//     }
//     if (password.length < 6) {
//       _showErrorSnackBar("Password must be at least 6 characters");
//       return false;
//     }

//     return true;
//   }

//   bool _isValidEmail(String email) {
//     // Simple email regex pattern for basic validation
//     final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
//     return emailRegex.hasMatch(email);
//   }

//   void _showErrorSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text(message)),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'second.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.teal,
              Colors.teal,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Logo in the middle of the page
                const SizedBox(height: 60),
                Container(
                  width: 160, // Adjusted width for better fit
                  height: 160, // Adjusted height for better fit
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/applogo.jpg'),
                      fit: BoxFit.cover, // Ensures the image scales properly
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Welcome Text below the logo
                const Text(
                  "Welcome to Fitness App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                // Email text field
                TextField(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: const Icon(Icons.person_outline, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                // Password text field
                TextField(
                  controller: _passwordTextController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 30),
                // Sign In button
                ElevatedButton(
                  onPressed: () {
                    if (_validateInputs()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FrontPage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 7, 52, 69),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                // Forgot Password
                TextButton(
                  onPressed: () {
                    // Add functionality for forgot password if needed
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _validateInputs() {
    final email = _emailTextController.text.trim();
    final password = _passwordTextController.text.trim();

    if (email.isEmpty) {
      _showErrorSnackBar("Email cannot be empty");
      return false;
    }
    if (!_isValidEmail(email)) {
      _showErrorSnackBar("Enter a valid email address");
      return false;
    }
    if (password.isEmpty) {
      _showErrorSnackBar("Password cannot be empty");
      return false;
    }
    if (password.length < 6) {
      _showErrorSnackBar("Password must be at least 6 characters");
      return false;
    }
    return true;
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegex.hasMatch(email);
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
