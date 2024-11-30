import 'package:flutter/material.dart';
import '../models/candidate.dart';

class CandidateProvider with ChangeNotifier {
  final List<Candidate> _candidates = [];

  List<Candidate> get candidates => [..._candidates];

  void addCandidate(Candidate candidate) {
    _candidates.add(candidate);
    notifyListeners();
  }
}
