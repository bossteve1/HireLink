import 'package:uuid/uuid.dart';

class Job {
  final String id;
  final String title;
  final String description;
  final String type; // Full-time, Part-time, Gig
  final String companyName;

  Job({
    required this.title,
    required this.description,
    required this.type,
    required this.companyName,
  }) : id = const Uuid().v4();
}
