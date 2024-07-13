
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_iti/screens/cubit/play_cubit.dart';
import 'package:quiz_app_iti/screens/task1_cubit.dart';
//import 'package:quiz_app_iti/lib/screens/task1.dart';
//import 'package:quiz_app_iti/play_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => PlayCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayWithStatemanagment2(),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_iti/my_cubit.dart';
import 'package:quiz_app_iti/screens/task3_cubit.dart';
import 'package:quiz_app_iti/screens/task4.dart'; // تأكد من مسار استيراد الملف
//import 'package:quiz_app_iti/lib/screens/task4.dart'; // تأكد من مسار استيراد الملف

void main() {
  runApp(
    BlocProvider(
      create: (context) => MyCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayWithStatemanagment2(),
    );
  }
}*/
