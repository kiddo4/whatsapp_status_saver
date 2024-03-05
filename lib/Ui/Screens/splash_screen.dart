import 'package:flutter/material.dart';
import 'package:status_saver/Ui/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
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

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Center(
        child: Text('My Saver'),
      ),
    );
  }
}