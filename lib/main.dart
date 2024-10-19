import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/task_provider.dart';
import 'screens/home_screen.dart';
import 'screens/tasks_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => TaskProvider()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue, // Explicitly set the AppBar to blue
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange, // Set the global AppBar color
          foregroundColor: Colors.white, // Text and icon color in the AppBar
        ),
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/tasks': (context) => TasksScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
