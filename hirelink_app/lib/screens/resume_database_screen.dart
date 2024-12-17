import 'package:flutter/material.dart';
import '../models/candidate.dart';
import '../widgets/candidate_card.dart';

class ResumeDatabaseScreen extends StatelessWidget {
  const ResumeDatabaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HireLink'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Search Filters',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // Search Filters
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Search by skills',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Search by experience',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Search by job preference',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Section Title
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Available Resumes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // Candidate List
          Expanded(
            child: ListView(
              children: const [
                CandidateCard(
                  name: 'Alex Johnson',
                  skills: 'Marketing, SEO',
                  experience: '5 years',
                  preference: 'Remote Work',
                  imageUrl:
                      'https://via.placeholder.com/150', candidate: null, // Replace with actual image
                ),
                CandidateCard(
                  name: 'Alexandra Johnson',
                  skills: 'Python, Data Analysis',
                  experience: '5 years',
                  preference: 'On-site',
                  imageUrl:
                      'https://via.placeholder.com/150', candidate: null, // Replace with actual image
                ),
                CandidateCard(
                  name: 'Marcus Lee',
                  skills: 'Java, Project Management',
                  experience: '3 years',
                  preference: 'Hybrid Work',
                  imageUrl:
                      'https://via.placeholder.com/150', candidate: null,  // Replace with actual image
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
