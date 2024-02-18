import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text('Search'),
      leading: null,
      backgroundColor: Colors.amberAccent,
      automaticallyImplyLeading: false,
    ),
    body: const Center(
      child: Text('Home'),
    ),
    );
  }
}