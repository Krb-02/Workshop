import 'package:flutter/material.dart';
import 'package:threads_app/screens/Profile_page.dart';
import 'package:threads_app/screens/add_post_page.dart';
import 'package:threads_app/screens/homepage.dart';
import 'package:threads_app/screens/notifications_page.dart';
import 'package:threads_app/screens/search_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 1;

  List<Widget> screens = const [
    HomePage(),
    SearchPage(),
    AddPostPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), 
            label: '',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add), 
            label: '',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notifications), 
            label: '',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), 
            label: '',
            ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState((){
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        ),
    );
  }
}