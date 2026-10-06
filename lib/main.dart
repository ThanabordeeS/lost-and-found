import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // เริ่มต้น Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
=======
import 'post/screens/create_post_screen.dart'; // import หน้าฟอร์มโพสต์
>>>>>>> origin/main

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      title: 'Lost & Found',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),

      // เริ่มต้นที่หน้า Login
      home: const LoginScreen(),
=======
      title: 'Lost and Found',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // คุมโทนสีหลักเป็น Indigo ให้อารมณ์ทันสมัย สะอาดตา
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C5CE7),
          primary: const Color(0xFF6C5CE7),
          surface: const Color(0xFFF8F9FA),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),

        // ตกแต่ง AppBar ให้คลีน ไม่มีเงา
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color(0xFF2D3436),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // ปรับดีไซน์ช่องกรอกข้อมูล (TextField) ทั้งแอปให้มนและสบายตา
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF6C5CE7), width: 1.5),
          ),
        ),

        // ปรับดีไซน์ปุ่มกดหลัก (ElevatedButton) ให้เต็มความกว้างและมุมมน
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6C5CE7),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: const CreatePostScreen(),
>>>>>>> origin/main
    );
  }
}