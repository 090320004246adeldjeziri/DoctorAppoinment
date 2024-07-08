import 'package:doctor_apoinement/utils/config.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/appoinement_card.dart';
import '../components/doctors_card.dart';
import 'doctor_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    {
      'icon': FontAwesomeIcons.userDoctor,
      "category": "General",
    },
    {
      'icon': FontAwesomeIcons.lungs,
      "category": "Respirations",
    },
    {
      'icon': FontAwesomeIcons.personPregnant,
      "category": "Gynecology",
    },
    {
      'icon': FontAwesomeIcons.heartPulse,
      "category": "Cardiology",
    },
    {
      'icon': FontAwesomeIcons.teeth,
      "category": "Dental",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Just Me",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/moh.jpg"),
                    ),
                  )
                ],
              ),
              Config.spaceSmall,
                
              ///Category lisy
              const Text(
                "Category",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Config.spaceSmall,
              SizedBox(
                height: Config.heightSize * 0.05,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List<Widget>.generate(medCat.length, (index) {
                    return Card(
                      margin: const EdgeInsets.only(right: 20),
                      color: Config.primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            FaIcon(
                              medCat[index]['icon'],
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              medCat[index]["category"],
                              style: const TextStyle(
                                  fontSize: 16, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                  ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Config.spaceSmall,
              const Text("Appoinement Today",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              Config.spaceSmall,
              AppointementCard(),
               Config.spaceSmall,
              const Text("Top Doctors",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              Config.spaceSmall,
              // Time to create List of top Doctors !! 
             Column(children:
              List.generate(10, (index) {
               return  DoctorCard(route: 'doc_details',);})
          
                      
                         ),
            ])
      ))));
            
  }
}
