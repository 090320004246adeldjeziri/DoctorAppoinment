import 'package:doctor_apoinement/screens/auth_page.dart';
import 'package:doctor_apoinement/screens/doctor_details.dart';
import 'package:doctor_apoinement/utils/config.dart';
import 'package:doctor_apoinement/utils/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This is for push navigator
static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Doctor app',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,

        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),

        primarySwatch: Colors.green,
      ),
      initialRoute: '/'
      ,
      routes: {
        '/' : (((context) => const AuthPage() )),
        'main' :(context) => MainLayout(),
        'doc_details' : (context) => DoctorDetails()
      },
    );
  }
}
