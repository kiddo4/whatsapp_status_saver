import 'package:flutter/material.dart';
import 'package:status_saver/Ui/Screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigate () {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushAndRemoveUntil(
          context, 
          MaterialPageRoute(
            builder: (_) => const HomeScreen()
            ),
          (route) => false
          );
        
      });
    }
    return const Scaffold(
      body: Center(
        child: Text('My Saver'),
      ),
    );
  }
}