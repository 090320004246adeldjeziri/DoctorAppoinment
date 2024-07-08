import 'package:doctor_apoinement/screens/appoinement_page.dart';
import 'package:doctor_apoinement/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _page,
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          children: [HomePage(), AppointmentPage()],
        ),
        bottomNavigationBar: BottomNavigationBar(currentIndex: currentPage,onTap: (page) {
          currentPage = page;
          _page.animateToPage(page, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          
        }, items: [
          BottomNavigationBarItem(icon:Icon(Icons.house),label: "Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.medical_services),label: "Appointment")
        ],));
  }
}
