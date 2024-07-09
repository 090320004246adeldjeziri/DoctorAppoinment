import 'package:doctor_apoinement/components/button.dart';
import 'package:doctor_apoinement/components/custom_appbar.dart';
import 'package:doctor_apoinement/utils/config.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: "Doctor Details",
        icon: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: (() {
              setState(() {
                isFav = !isFav;
              });
            }),
            icon: Icon(
              isFav ? Icons.favorite_rounded : Icons.favorite_border,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
            children: [
              //Doctor Avatar
              const AboutDoctor(),
              const DoctorInfo(),
              const DetailsBody(),
              const Spacer(),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Button(
                      title: "Book Appointment",
                      disable: false,
                      onPressed: () {
                        //Navigate to booking Page
                        Navigator.of(context).pushNamed('booking_page');
                      },
                      width: double.infinity))
            ],
          )),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(children: [
        const CircleAvatar(
          radius: 65,
          backgroundImage: AssetImage('assets/images/doctorm1.jpg'),
          backgroundColor: Colors.grey,
        ),
        Config.spaceMeduim,
        const Text(
          " Djeziri Adel",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Config.spaceSmall,
        SizedBox(
          width: Config.widthSize * 0.75,
          child: const Text(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.justify,
              "Mob App Dev Algeria,Ain temouchent working, Experienced with app  reservation hoteliste , multiPanel,and medical app. thanks for coming !"),
        ),
        Config.spaceSmall,
        SizedBox(
          width: Config.widthSize * 0.75,
          child: const Text(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              softWrap: true,
              textAlign: TextAlign.center,
              'Data Science'),
        )
      ]),
    );
  }
}

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  const[
          SizedBox(height: 5,),
           Text("About Developer",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
               SizedBox(height: 5,),

           Text(
            "I'm a Developer & data scinece in the same time,codoing nice ui m flutter using in backend firebase with  defferent service , and also new in laravelfor backend and front end , good in solving problem ,motivated need always amelior her Experience ! Nice to meet me , cause me is the best always ",
            style: TextStyle(fontWeight: FontWeight.w500, height: 1.5),
            softWrap: true,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          InfoCard(label: 'Java ', value: '04 ans '),
          SizedBox(
            width: 15,
          ),
          InfoCard(label: 'Flutter Coding', value: '02 ans '),
          SizedBox(
            width: 15,
          ),
          InfoCard(label: 'Linux', value: '03 ans'),
        ],
      ),
    );
  }
}
class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.label, required this.value});

  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Config.primaryColor,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            value,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
