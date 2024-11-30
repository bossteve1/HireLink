import 'package:flutter/material.dart';

class InterviewScheduleScreen extends StatelessWidget {
  final _candidateNameController = TextEditingController();
  final _interviewDateController = TextEditingController();
  final _interviewTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Schedule Interview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _candidateNameController,
              decoration: InputDecoration(labelText: 'Candidate Name'),
            ),
            TextField(
              controller: _interviewDateController,
              decoration: InputDecoration(labelText: 'Interview Date (YYYY-MM-DD)'),
            ),
            TextField(
              controller: _interviewTimeController,
              decoration: InputDecoration(labelText: 'Interview Time (HH:MM)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle interview scheduling logic here
                final name = _candidateNameController.text;
                final date = _interviewDateController.text;
                final time = _interviewTimeController.text;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Interview Scheduled for $name on $date at $time')),
                );
                Navigator.pop(context);
              },
              child: Text('Schedule Interview'),
            ),
          ],
        ),
      ),
    );
  }
}
