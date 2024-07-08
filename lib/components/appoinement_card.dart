import 'package:flutter/material.dart';

import '../utils/config.dart';

class AppointementCard extends StatefulWidget {
  const AppointementCard({super.key});

  @override
  State<AppointementCard> createState() => _AppointementCardState();
}

class _AppointementCardState extends State<AppointementCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Config.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(children: [
                  const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/doctorf1.jpg")),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Dr Hafsa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Dental",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
                Config.spaceSmall,
                //  Shedule info here !
                ScheduleCard(),
                Config.spaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                          child: const Text("Cancel",
                          style: TextStyle(
                            color: Colors.white,
                          ), ),
                          onPressed : (){},
                         
                    )),
                    const SizedBox(width: 10,),
                     Expanded(
                        child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          child: const Text("Completed",
                          style: TextStyle(
                            color: Colors.white,
                          ), ),
                          onPressed : (){},
                         
                    ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

//Shedule Widget there !!
class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: const [
        Icon(
          Icons.calendar_today,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Monday , 11/28/2022',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.access_alarm,
          color: Colors.white,
          size: 17,
        ),
        SizedBox(
          width: 5,
        ),
        Flexible(
            child: Text(
          '9 : 00 PM',
          style: TextStyle(color: Colors.white),
        ))
      ]),
    );
  }
}
