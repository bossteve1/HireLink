import 'package:flutter/material.dart';
import '../models/candidate.dart';

class CandidateCard extends StatelessWidget {
  final Candidate candidate;

  CandidateCard({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(candidate.name[0]),
        ),
        title: Text(candidate.name),
        subtitle: Text('Skills: ${candidate.skills.join(', ')}'),
        trailing: IconButton(
          icon: Icon(Icons.schedule),
          onPressed: () {
            Navigator.pushNamed(context, '/schedule-interview');
          },
        ),
      ),
    );
  }
}
