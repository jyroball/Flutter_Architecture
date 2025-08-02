import 'package:flutter/material.dart';
import 'package:project2/presentation/screens/userPosts_screen.dart';
import 'package:project2/core/dependency_injection/injection_container.dart';

void main() async {
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Posts Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserPostsScreen(),
    );
  }
}
