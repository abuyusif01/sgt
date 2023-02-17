// ignore_for_file: prefer_const_constructors

import 'package:flutter/services.dart';
import 'package:navigation_bar/navigation_bar.dart';
import '../constants/color.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: lightGreen,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: lightGreen, // <-- SEE HERE
            statusBarIconBrightness:
                Brightness.dark, //<-- For Android SEE HERE (dark icons)
            statusBarBrightness:
                Brightness.light, //<-- For iOS SEE HERE (dark icons)
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                scale: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Soulmate Global Trading',
                style: TextStyle(color: gray900),
              ),
            ],
          ),
        ),
      ),

      // body:
      // backgroundColor: lightGreen,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        itemCornerRadius: 15,
        containerHeight: 70,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(
              Icons.apps,
              color: gray700,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                color: gray700,
              ),
            ),
            activeColor: gray700,
            textAlign: TextAlign.center,
            inColor: lightGreen,
            // inColor: lightGreen,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: const Text(
              'Contacts',
              style: TextStyle(
                color: gray700,
              ),
            ),
            activeColor: gray700,
            textAlign: TextAlign.center,
            inColor: gray400,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: const Text(
              'Messages',
              style: TextStyle(
                color: gray700,
              ),
            ),
            activeColor: gray700,
            textAlign: TextAlign.center,
            inColor: gray400,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.contacts),
            title: const Text(
              'Contact',
              style: TextStyle(
                color: gray700,
              ),
            ),
            activeColor: gray700,
            textAlign: TextAlign.center,
            inColor: gray400,
          ),
        ],
      ),
    );
  }
}
