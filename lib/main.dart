import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_time/providers/primary_provider.dart';
import 'package:quiz_time/screens/home_screen.dart';
import 'package:quiz_time/screens/questions_screen.dart';
import 'package:quiz_time/screens/quizzes_screen.dart';

void main() {
        runApp(ChangeNotifierProvider(
          create: (context) => PrimaryProvider(),
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => HomeScreen(),
            '/homeScreen': (context) => HomeScreen(),
            '/questionsScreen': (context) => QuestionsScreen(),
            '/quizzesScreen' : (context) => QuizzesScreen()
          },
        ),
        ),
        );
}



