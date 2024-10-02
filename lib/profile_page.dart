import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dob;
  final String gender;
  final String imageUrl;

  ProfilePage({
    required this.name,
    required this.email,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(imageUrl), // Placeholder for image
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(email, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(phone, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('DOB: $dob', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Gender: $gender', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action when edit profile is clicked (if needed)
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
