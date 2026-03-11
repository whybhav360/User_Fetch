import 'package:flutter/material.dart';

import '../Model/model.dart';

class ContactScreenPage extends StatelessWidget {
  final User user;
  const ContactScreenPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _contactCard(Icons.person, 'Name:', user.name),
                _contactCard(Icons.email, 'Email:', user.email),
                _contactCard(Icons.phone, 'Phone:', user.phone),
                _contactCard(Icons.language, 'Website:', user.website),
                _contactCard(Icons.business, 'Company:', user.company.name),
                _contactCard(Icons.location_city, 'City:', user.address.city),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _contactCard(IconData icon, String title, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.black)),
              Text(
                value.isNotEmpty ? value : 'N/A',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
