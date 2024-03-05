import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver/Provider/bottom_nav_provider.dart';
import 'package:status_saver/Provider/getStatusProvider.dart';
import 'package:status_saver/Ui/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => GetStatusProvider()),
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}