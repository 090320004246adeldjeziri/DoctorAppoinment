import 'package:flutter/material.dart';

import '../utils/config.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.route});

final String route;
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 150,
      child: GestureDetector(
        onTap: (() {
          Navigator.of(context).pushNamed(route);
        }),//Redirect on doctor page details !
        child: Card(
            elevation: 5,
            child: Row(children: [
              SizedBox(
                width: Config.widthSize * 0.33,
                child:
                    Image.asset("assets/images/doctorf2.jpg", fit: BoxFit.fill),
              ),
              Flexible(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr Bouchra Laredj',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Dental",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                          const Spacer(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("4,5"),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("Reviews"),
                                Spacer(
                                  flex: 1,
                                ),
                                Text("20"),
                                Spacer(
                                  flex: 7,
                                )
                              ])
                        ],
                      ))),
            ])),
      ),
    );
  }
}
