import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/job.dart';
import '../providers/job_provider.dart';

class JobPostScreen extends StatelessWidget {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _companyController = TextEditingController();
  String _jobType = 'Full-time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post a Job')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Job Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Job Description'),
            ),
            TextField(
              controller: _companyController,
              decoration: InputDecoration(labelText: 'Company Name'),
            ),
            DropdownButton<String>(
              value: _jobType,
              onChanged: (value) {
                _jobType = value!;
              },
              items: ['Full-time', 'Part-time', 'Gig']
                  .map((type) => DropdownMenuItem(
                        value: type,
                        child: Text(type),
                      ))
                  .toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final job = Job(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  companyName: _companyController.text,
                  type: _jobType,
                );
                Provider.of<JobProvider>(context, listen: false).addJob(job);
                Navigator.pop(context);
              },
              child: Text('Post Job'),
            ),
          ],
        ),
      ),
    );
  }
}
