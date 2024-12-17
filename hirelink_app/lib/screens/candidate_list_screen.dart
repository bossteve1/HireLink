import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/candidate_provider.dart';
import '../widgets/candidate_card.dart';

class CandidateListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final candidates = Provider.of<CandidateProvider>(context).candidates;

    return Scaffold(
      appBar: AppBar(title: Text('Candidates List')),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (ctx, index) => CandidateCard(candidate: candidates[index], name: '', skills: '', experience: '', preference: '', imageUrl: '',),
      ),
    );
  }
}
