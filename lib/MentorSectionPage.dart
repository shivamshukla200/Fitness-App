// import 'package:flutter/material.dart';

// class MentorSectionPage extends StatefulWidget {
//   const MentorSectionPage({super.key});

//   @override
//   State<MentorSectionPage> createState() => _MentorSectionPageState();
// }

// class _MentorSectionPageState extends State<MentorSectionPage> {
//   String? assignedMentor;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: const Text('Select Your Mentor'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal, Colors.greenAccent],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           children: [
//             // Header Section
//             if (assignedMentor != null)
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.9),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 8,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Assigned Mentor: $assignedMentor',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.teal,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           assignedMentor = null;
//                         });
//                       },
//                       icon: const Icon(Icons.refresh, color: Colors.white),
//                       label: const Text(
//                         'Reset Mentor',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue.shade700,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                       ),
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text('Chat feature coming soon!'),
//                           ),
//                         );
//                       },
//                       icon: const Icon(Icons.chat, color: Colors.white),
//                       label: const Text(
//                         'Chat with Mentor',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             // Mentor List
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   // Mentor details
//                   final mentors = [
//                     {
//                       'name': 'John Doe',
//                       'experience': '5 years experience in yoga and meditation.',
//                       'imageUrl': 'assets/t.jpg',
//                     },
//                     {
//                       'name': 'Jane Smith',
//                       'experience': '8 years experience specializing in mindfulness.',
//                       'imageUrl': 'assets/t2.jpg',
//                     },
//                     {
//                       'name': 'Emily Johnson',
//                       'experience': '3 years experience in child yoga and meditation.',
//                       'imageUrl': 'assets/t3.jpg',
//                     },
//                   ];

//                   final mentor = mentors[index];
//                   return MentorCard(
//                     name: mentor['name']!,
//                     experience: mentor['experience']!,
//                     imageUrl: mentor['imageUrl']!,
//                     isAssigned: assignedMentor == mentor['name'],
//                     onChoose: () {
//                       setState(() {
//                         assignedMentor = mentor['name'];
//                       });
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MentorCard extends StatelessWidget {
//   final String name;
//   final String experience;
//   final String imageUrl;
//   final bool isAssigned;
//   final VoidCallback onChoose;

//   const MentorCard({
//     super.key,
//     required this.name,
//     required this.experience,
//     required this.imageUrl,
//     required this.isAssigned,
//     required this.onChoose,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             // Profile Image
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage(imageUrl),
//             ),
//             const SizedBox(width: 16),
//             // Mentor Info
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     experience,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Button
//             isAssigned
//                 ? const Text(
//                     'Assigned',
//                     style: TextStyle(
//                       color: Colors.green,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 : ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.teal,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     onPressed: onChoose,
//                     child: const Text(
//                       'Choose',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class MentorSectionPage extends StatefulWidget {
//   const MentorSectionPage({super.key});

//   @override
//   State<MentorSectionPage> createState() => _MentorSectionPageState();
// }

// class _MentorSectionPageState extends State<MentorSectionPage> {
//   String? assignedMentor;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: const Text('Select Your Mentor'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal, Colors.greenAccent],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           children: [
//             // Header Section
//             if (assignedMentor != null)
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.9),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 8,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Assigned Mentor: $assignedMentor',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.teal,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           assignedMentor = null;
//                         });
//                       },
//                       icon: const Icon(Icons.refresh, color: Colors.white),
//                       label: const Text(
//                         'Reset Mentor',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             // Mentor List
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   // Mentor details
//                   final mentors = [
//                     {
//                       'name': 'John Doe',
//                       'experience': '5 years in yoga and meditation.',
//                       'contact': 'johndoe@gmail.com',
//                       'achievements': 'Certified Yoga Instructor',
//                       'imageUrl': 'assets/t.jpg',
//                     },
//                     {
//                       'name': 'Jane Smith',
//                       'experience': '8 years specializing in mindfulness.',
//                       'contact': 'janesmith@gmail.com',
//                       'achievements': 'Mindfulness Expert, Author of Yoga Life',
//                       'imageUrl': 'assets/t2.jpg',
//                     },
//                     {
//                       'name': 'Emily Johnson',
//                       'experience': '3 years in child yoga and meditation.',
//                       'contact': 'emilyjohnson@gmail.com',
//                       'achievements': 'Child Yoga Specialist',
//                       'imageUrl': 'assets/t3.jpg',
//                     },
//                   ];

//                   final mentor = mentors[index];
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MentorDetailsPage(
//                             name: mentor['name'] as String,
//                             experience: mentor['experience'] as String,
//                             contact: mentor['contact'] as String,
//                             achievements: mentor['achievements'] as String,
//                             imageUrl: mentor['imageUrl'] as String,
//                           ),
//                         ),
//                       );
//                     },
//                     child: MentorCard(
//                       name: mentor['name'] as String,
//                       experience: mentor['experience'] as String,
//                       imageUrl: mentor['imageUrl'] as String,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MentorCard extends StatelessWidget {
//   final String name;
//   final String experience;
//   final String imageUrl;

//   const MentorCard({
//     super.key,
//     required this.name,
//     required this.experience,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage(imageUrl),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     experience,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MentorDetailsPage extends StatelessWidget {
//   final String name;
//   final String experience;
//   final String contact;
//   final String achievements;
//   final String imageUrl;

//   const MentorDetailsPage({
//     super.key,
//     required this.name,
//     required this.experience,
//     required this.contact,
//     required this.achievements,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage(imageUrl),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               name,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               experience,
//               style: const TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Contact: $contact',
//               style: const TextStyle(fontSize: 16, color: Colors.teal),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Achievements: $achievements',
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 16, color: Colors.teal),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class MentorSectionPage extends StatefulWidget {
//   const MentorSectionPage({super.key});

//   @override
//   State<MentorSectionPage> createState() => _MentorSectionPageState();
// }

// class _MentorSectionPageState extends State<MentorSectionPage> {
//   String? assignedMentor;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: const Text('Select Your Mentor'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal, Colors.greenAccent],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           children: [
//             // Header Section
//             if (assignedMentor != null)
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.9),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 8,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Assigned Mentor: $assignedMentor',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.teal,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 10),
//                     ElevatedButton.icon(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           assignedMentor = null;
//                         });
//                       },
//                       icon: const Icon(Icons.refresh, color: Colors.white),
//                       label: const Text(
//                         'Reset Mentor',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             // Mentor List
//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   // Mentor details
//                   final mentors = [
//                     {
//                       'name': 'John Doe',
//                       'experience': '5 years in yoga and meditation.',
//                       'contact': 'johndoe@gmail.com',
//                       'achievements': 'Certified Yoga Instructor',
//                       'imageUrl': 'assets/t.jpg',
//                     },
//                     {
//                       'name': 'Jane Smith',
//                       'experience': '8 years specializing in mindfulness.',
//                       'contact': 'janesmith@gmail.com',
//                       'achievements': 'Mindfulness Expert, Author of Yoga Life',
//                       'imageUrl': 'assets/t2.jpg',
//                     },
//                     {
//                       'name': 'Emily Johnson',
//                       'experience': '3 years in child yoga and meditation.',
//                       'contact': 'emilyjohnson@gmail.com',
//                       'achievements': 'Child Yoga Specialist',
//                       'imageUrl': 'assets/t3.jpg',
//                     },
//                   ];

//                   final mentor = mentors[index];
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         assignedMentor = mentor['name'] as String;
//                       });

//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MentorDetailsPage(
//                             name: mentor['name'] as String,
//                             experience: mentor['experience'] as String,
//                             contact: mentor['contact'] as String,
//                             achievements: mentor['achievements'] as String,
//                             imageUrl: mentor['imageUrl'] as String,
//                           ),
//                         ),
//                       );
//                     },
//                     child: MentorCard(
//                       name: mentor['name'] as String,
//                       experience: mentor['experience'] as String,
//                       imageUrl: mentor['imageUrl'] as String,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MentorCard extends StatelessWidget {
//   final String name;
//   final String experience;
//   final String imageUrl;

//   const MentorCard({
//     super.key,
//     required this.name,
//     required this.experience,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: [
//             CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage(imageUrl),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     experience,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MentorDetailsPage extends StatelessWidget {
//   final String name;
//   final String experience;
//   final String contact;
//   final String achievements;
//   final String imageUrl;

//   const MentorDetailsPage({
//     super.key,
//     required this.name,
//     required this.experience,
//     required this.contact,
//     required this.achievements,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage(imageUrl),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               name,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               experience,
//               style: const TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 16),
//             Text(
//               'Contact: $contact',
//               style: const TextStyle(fontSize: 16, color: Colors.teal),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Achievements: $achievements',
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 16, color: Colors.teal),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

class MentorSectionPage extends StatefulWidget {
  const MentorSectionPage({super.key});

  @override
  State<MentorSectionPage> createState() => _MentorSectionPageState();
}

class _MentorSectionPageState extends State<MentorSectionPage> {
  String? assignedMentor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Select Your Mentor'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.greenAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // Header Section
            if (assignedMentor != null)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Assigned Mentor: $assignedMentor',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      onPressed: () {
                        setState(() {
                          assignedMentor = null;
                        });
                      },
                      icon: const Icon(Icons.refresh, color: Colors.white),
                      label: const Text(
                        'Reset Mentor',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            // Mentor List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: 3,
                itemBuilder: (context, index) {
                  // Mentor details
                  final mentors = [
                    {
                      'name': 'John Doe',
                      'experience': '5 years in yoga and meditation.',
                      'contact': 'johndoe@gmail.com',
                      'achievements': 'Certified Yoga Instructor',
                      'imageUrl': 'assets/t.jpg',
                    },
                    {
                      'name': 'Jane Smith',
                      'experience': '8 years specializing in mindfulness.',
                      'contact': 'janesmith@gmail.com',
                      'achievements': 'Mindfulness Expert, Author of Yoga Life',
                      'imageUrl': 'assets/t2.jpg',
                    },
                    {
                      'name': 'Emily Johnson',
                      'experience': '3 years in child yoga and meditation.',
                      'contact': 'emilyjohnson@gmail.com',
                      'achievements': 'Child Yoga Specialist',
                      'imageUrl': 'assets/t3.jpg',
                    },
                  ];

                  final mentor = mentors[index];
                  return MentorCard(
                    name: mentor['name'] as String,
                    experience: mentor['experience'] as String,
                    imageUrl: mentor['imageUrl'] as String,
                    onChoose: () {
                      setState(() {
                        assignedMentor = mentor['name'] as String;
                      });
                    },
                    onTapImage: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentorDetailsPage(
                            name: mentor['name'] as String,
                            experience: mentor['experience'] as String,
                            contact: mentor['contact'] as String,
                            achievements: mentor['achievements'] as String,
                            imageUrl: mentor['imageUrl'] as String,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final String name;
  final String experience;
  final String imageUrl;
  final VoidCallback onChoose;
  final VoidCallback onTapImage;

  const MentorCard({
    super.key,
    required this.name,
    required this.experience,
    required this.imageUrl,
    required this.onChoose,
    required this.onTapImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTapImage,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    experience,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: onChoose,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Choose Mentor',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MentorDetailsPage extends StatelessWidget {
  final String name;
  final String experience;
  final String contact;
  final String achievements;
  final String imageUrl;

  const MentorDetailsPage({
    super.key,
    required this.name,
    required this.experience,
    required this.contact,
    required this.achievements,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              experience,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Text(
              'Contact: $contact',
              style: const TextStyle(fontSize: 16, color: Colors.teal),
            ),
            const SizedBox(height: 8),
            Text(
              'Achievements: $achievements',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
