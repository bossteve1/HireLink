import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/job_provider.dart';
import './providers/candidate_provider.dart';
import './screens/home_screen.dart';
import './screens/job_post_screen.dart';
import './screens/candidate_list_screen.dart';
import './screens/interview_schedule_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => JobProvider()),
        ChangeNotifierProvider(create: (ctx) => CandidateProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Portal',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (ctx) => HomeScreen(),
          '/post-job': (ctx) => JobPostScreen(),
          '/view-candidates': (ctx) => CandidateListScreen(),
          '/schedule-interview': (ctx) => InterviewScheduleScreen(),
        },
      ),
    );
  }
}
