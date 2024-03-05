import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status_saver/Provider/bottom_nav_provider.dart';
import 'package:status_saver/Ui/NavPages/ImagePage/images_screen.dart';
import 'package:status_saver/Ui/NavPages/VideoPage/videos_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> pages = const [
    ImageHomePage(), 
    VideoHomePage()
    ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, nav, child) {
      return Scaffold(
        body: pages[nav.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              nav.changeIndex(value);
            },
            currentIndex: nav.currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: "Video")
            ]),
      );
    });
  }
}