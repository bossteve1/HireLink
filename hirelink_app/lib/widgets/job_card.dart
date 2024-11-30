import 'package:flutter/material.dart';
import '../models/job.dart';

class JobCard extends StatelessWidget {
  final Job job;

  JobCard({required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(job.title),
        subtitle: Text('${job.companyName} - ${job.type}'),
        trailing: TextButton(
          onPressed: () {
            // Implement job details or application logic
          },
          child: Text('View Details'),
        ),
      ),
    );
  }
}
