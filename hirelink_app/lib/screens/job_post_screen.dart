import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/job.dart';
import '../providers/job_provider.dart';

class JobPostScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HireLink'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Post a Job", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Job Type: "),
                  JobTypeRadioButton(),
                ],
              ),
              SizedBox(height: 16),
              JobForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class JobTypeRadioButton extends StatefulWidget {
  @override
  _JobTypeRadioButtonState createState() => _JobTypeRadioButtonState();
}

class _JobTypeRadioButtonState extends State<JobTypeRadioButton> {
  String _jobType = "Full-time";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: "Full-time",
          groupValue: _jobType,
          onChanged: (value) => setState(() => _jobType = value!),
        ),
        Text("Full-time"),
        Radio<String>(
          value: "Part-time",
          groupValue: _jobType,
          onChanged: (value) => setState(() => _jobType = value!),
        ),
        Text("Part-time"),
        Radio<String>(
          value: "Gig",
          groupValue: _jobType,
          onChanged: (value) => setState(() => _jobType = value!),
        ),
        Text("Gig"),
      ],
    );
  }
}

class JobForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Job Title"),
          ),
          SizedBox(height: 10),
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration(labelText: "Job Description"),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "Required Skills"),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "Salary Range"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
            ),
            child: Text("Submit Job", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
