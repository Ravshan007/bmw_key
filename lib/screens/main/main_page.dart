import 'package:bmw_key/core/constants/constants.dart';
import 'package:bmw_key/screens/main/settings_page/settings_page.dart';
import 'package:flutter/material.dart';
import 'chek_vin_page/check_vin_page.dart';
import 'key_page/key_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    const KeyPage(),
    const CheckVinPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 110,

        decoration: const BoxDecoration(
          color: AppColors.black
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.key),
                label: 'KEY',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit),
                label: 'Chek VIN',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'SETTINGS',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.white,
            selectedItemColor: const Color(0xff2196f3),
            backgroundColor: AppColors.C_0B0B14,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

