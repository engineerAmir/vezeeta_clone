import 'package:flutter/material.dart';
import 'package:vezeeta_mokup/custom_widget/home-page_icon_button.dart';
import 'package:vezeeta_mokup/custom_widget/order-medicines-button.dart';
import 'package:vezeeta_mokup/screens/doctor-list-page.dart';
import 'package:vezeeta_mokup/screens/search-for-doctor-page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF0F2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text("Vezeeta",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    HomePageIconButton(
                      Route: () => Navigator.pushNamed(
                          context, SearchForDoctorPage.id
                         ),
                      text: 'Clinic Visit',
                      path: 'assets/images/hospital.png',
                    ),
                    HomePageIconButton(
                        Route: () {},
                        text: 'Pharmacy',
                        path: 'assets/images/pharmacy2.png'),
                    HomePageIconButton(
                        Route: () {},
                        text: 'Doctor Call',
                        path: 'assets/images/doctor.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    HomePageIconButton(
                        Route: () {},
                        text: 'Home Visit',
                        path: 'assets/images/clinic-visit.png'),
                    HomePageIconButton(
                        Route: () {},
                        text: 'Procedures',
                        path: 'assets/images/cosmetic-surgery.png'),
                    HomePageIconButton(
                        Route: () {},
                        text: 'Labs',
                        path: 'assets/images/lab2.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: 365,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'book clinic Appointment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: 320,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Search for specialty ,doctor,or hospital',
                            hintStyle: TextStyle(height: 1),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('assets/images/shield.png'),
                        width: 30,
                        height: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Insurance',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Book a doctor or buy medicine with \ninsurance',
                            maxLines: 2,
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(255, 11, 120, 209)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: (MainAxisAlignment.spaceAround),
                        children: [
                          Text(
                            'Hit your daily steps target and\nwin 10 EGP every day.',
                            style: TextStyle(color: Colors.white),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 1, 116, 209)),
                              ))
                        ],
                      ),
                      Image(
                        image: AssetImage('assets/images/walk.png'),
                        height: 120,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 220,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Medicines',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    width: 340,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for specialty ,doctor,or hospital',
                        hintStyle: TextStyle(height: 1),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OrderMedicinesButton(
                          Icons.sort_by_alpha_sharp, 'Prescription or \nClaim'),
                      OrderMedicinesButton(
                          Icons.camera_alt_outlined, 'Product \nPicture '),
                      OrderMedicinesButton(
                          Icons.phone_outlined, 'pharmacist\nAssistance')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
