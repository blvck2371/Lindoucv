import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:lindoucv/core/theme/theme_controller.dart';
import 'package:lindoucv/features/competences/views/Competences.dart';
import 'package:lindoucv/features/contact/views/Contact.dart';
import 'package:lindoucv/features/experiences/views/Experiences.dart';
import 'package:lindoucv/features/home/views/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = const [
    Home(),

    Experiences(),
    Competences(),
    ContactPage(),
    //ContactPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: _getCurveForPage(index),

      // Change l'animation ici
    );
    setState(() {
      _currentIndex = index;
    });
  }

  Curve _getCurveForPage(int index) {
    switch (index) {
      case 0:
        return Curves.easeInCirc;
      case 1:
        return Curves.easeInCirc;
      case 2:
        return Curves.easeInCirc;
      default:
        return Curves.easeInOut;
    }
  }

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: Container(
          margin: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profil/photopp.jpg'),
          ),
        ),
        title: Text(
          'Lindou ngapout abdel Raoufou',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.find<ThemeController>().toggleTheme();
              },
              icon: Icon(
                themeController.themeMode.value == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
                size: 22,
                color: themeController.themeMode.value == ThemeMode.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),

      body: PageView(
        controller: _pageController,
        physics:
            const NeverScrollableScrollPhysics(), // désactive le swipe manuel
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColorDark,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // OK pour Accueil
            label: 'Accueil',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.work_outline,
            ), // mieux que "call" pour "Expériences"
            label: 'Expériences',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph,
            ), // plus représentatif pour "Compétences"
            label: 'Compétences',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
            ), // mieux adapté à "Contacts"
            label: 'Contacts',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.workspace_premium), // pour "Certifications"
          //   label: 'Certifications',
          // ),
        ],
      ),
    );
  }
}
