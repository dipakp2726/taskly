import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taskly/signup.dart';

import 'package:taskly/splash.dart';
import 'package:taskly/sliverpage.dart';

import 'package:taskly/tasks.dart';

import 'CreateProject.dart';
import 'Homepage.dart';
import 'Project.dart';
import 'TaskDetail.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
//MyApp is our root widget.
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'taskly',
      initialRoute: '/sliver',
      routes: {
        '/sliver': (context) => Sliverpage(),

        '/splash': (context) => Splash(),
        // '/': (context) => Splash(),
        '/': (context) => Homepage(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),

        '/create': (context) => CreateProject(),
        '/project': (context) => Project(),
        '/task-completed': (context) => TaskDetail(),
        '/task': (context) => Task(),
      },
    );
  }
}
