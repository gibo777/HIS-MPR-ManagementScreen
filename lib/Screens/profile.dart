// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage('assets/images/avatar.png'),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'John Doe',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'john.doe@example.com',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 16),
//             ListTile(
//               leading: Icon(Icons.phone),
//               title: Text('Phone'),
//               subtitle: Text('+1 123-456-7890'),
//             ),
//             ListTile(
//               leading: Icon(Icons.location_on),
//               title: Text('Address'),
//               subtitle: Text('123 Main St, City, Country'),
//             ),
//             ListTile(
//               leading: Icon(Icons.work),
//               title: Text('Occupation'),
//               subtitle: Text('Software Engineer'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
