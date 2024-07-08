
import 'package:doctor_apoinement/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav = false ;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:   CustomAppBar(
        appTitle: "Doctor Details",
        icon: Icon(Icons.arrow_back_ios),

      ),

    );
  }
}