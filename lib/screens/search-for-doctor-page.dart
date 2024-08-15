import 'package:flutter/material.dart';
import 'package:vezeeta_mokup/screens/doctor-list-page.dart';

class SearchForDoctorPage extends StatelessWidget {
   static final id = 'SearchForDoctorPage';
  const SearchForDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 147, 245),
      
        title: Text("Search for Doctor", style: TextStyle(color: Colors.white),),),



      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10),
                    hintText: "Search for doc",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),
              Text('  Most Popular Specialities' ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
        
              IconText(Icons.face_5_sharp, 'Dermatology', context, DoctorsListPage.id , 'Dermatology'),
              IconText(Icons.boy_outlined, 'Dentistry', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.airline_seat_recline_extra_outlined, 'Psychiatry', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.baby_changing_station_outlined, 'Pediatrics and New born', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.account_circle_sharp, 'Neurology', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.airline_seat_individual_suite_rounded, 'Orthopedics', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.adb_outlined, 'Gynaecology and Infertility', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.hearing, 'Ear, Nose, and Throat', context, DoctorsListPage.id, 'Dermatology'),
              IconText(Icons.accessible_forward_sharp, 'Cardiology and Vascular Disease', context, DoctorsListPage.id, 'Dermatology'),
              
            ],
          ),
        ),
      ),
    );



  }

  Widget IconText( icon, text,context, fun , arg){
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, fun , arguments:arg );},
      child: Column(
        children: [
          Row(
            
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(icon, size: 40, color: Color.fromARGB(255, 23, 129, 215),),
                    Icon(Icons.minimize ,color: Colors.red,size: 15, weight:100, )
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Text(text , style: TextStyle(fontSize: 18), )
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}