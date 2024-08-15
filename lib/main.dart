import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:vezeeta_mokup/custom_widget/doctor-Card.dart';
import 'package:vezeeta_mokup/custom_widget/home-page_icon_button.dart';

import 'package:vezeeta_mokup/screens/Profile-page.dart';
import 'package:vezeeta_mokup/screens/doctor-list-page.dart';

import 'package:vezeeta_mokup/screens/home-page.dart';
import 'package:vezeeta_mokup/screens/my-activity.dart';
import 'package:vezeeta_mokup/screens/search-for-doctor-page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); 
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(  
      useMaterial3: true,
      ),
      routes: {
        DoctorsListPage.id :(context) => DoctorsListPage(),
        SearchForDoctorPage.id :(context) => SearchForDoctorPage()
      },
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
   MainPage({super.key}); 


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> listpage = [
     HomePage(), MyActivityPage(), ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (page){
          
          setState(() {
            selectedIndex = page ;
          });
        },
        
        currentIndex: selectedIndex,
        items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Activity'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
      ]),
      

      body: listpage.elementAt(selectedIndex)
    );
  }
}