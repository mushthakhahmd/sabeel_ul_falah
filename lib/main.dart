import 'package:flutter/material.dart';
import 'package:sabeel/db/db_function.dart';
import 'package:sabeel/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();

  getCount();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sabeelulfalah',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const splash(),
    );
  }
}

