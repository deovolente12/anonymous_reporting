import 'package:flutter/material.dart';
import 'package:anonymous_reporting/screens/initial_screen.dart';


import 'package:firebase_core/firebase_core.dart';

const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "",
  authDomain: "",
  projectId: "anonymousreport-3dd37",
  storageBucket: "translationapplication-e1c30.appspot.com",
  messagingSenderId: "22415773245",
  appId: "1:636399134289:android:27dc976025ab68890a3a70",
);


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebaseOptions, // Provide Firebase options here
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App with Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialScreen(),
    );
  }
}