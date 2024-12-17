import 'package:flutter/material.dart';
import 'job_post_screen.dart';
import 'candidate_list_screen.dart';
import 'resume_database_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Job Portal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobPostScreen()),
                );
              },
              child: Text('Post a Job'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CandidateListScreen()),
                );
              },
              child: Text('View Candidates'),
            ),
             ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResumeDatabaseScreen(),
              ),
            );
          },
          child: Text('Go to Resume Database'),
        ),
          ],
        ),
      ),
    );
  }
}
