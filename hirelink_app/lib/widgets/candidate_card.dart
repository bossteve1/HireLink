import 'package:flutter/material.dart';
import 'package:hirelink_app/models/candidate.dart';

class CandidateCard extends StatelessWidget {
  final String name;
  final String skills;
  final String experience;
  final String preference;
  final String imageUrl;

  const CandidateCard({
    Key? key,
    required this.name,
    required this.skills,
    required this.experience,
    required this.preference,
    required this.imageUrl, required Candidate? candidate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Skills: $skills'),
            Text('Experience: $experience'),
            Text('Preference: $preference'),
          ],
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            // Add action here
          },
          child: const Text('View Details'),
        ),
      ),
    );
  }
}
