import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vezeeta_mokup/custom_widget/doctor-Card.dart';
import 'package:vezeeta_mokup/data/doctors.dart';
import 'package:vezeeta_mokup/firebase/argu.dart';

class DoctorsListPage extends StatefulWidget {
  static final id = 'DoctorsListPage';

  const DoctorsListPage({super.key});

  @override
  State<DoctorsListPage> createState() => _DoctorsListPageState();
}

class _DoctorsListPageState extends State<DoctorsListPage> {
 

  @override
  Widget build(BuildContext context) {
     List data = [];
    getdata() async {
      
    String args = ModalRoute.of(context)!.settings.arguments as String;
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection(args).get();

      data.addAll(querySnapshot.docs);
      setState(() {});
    }

    @override
    void initState() {
      getdata();
      super.initState();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Search for doctor'),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return DoctorCard(
                  data[i]['name'],
                  data[i]['title'],
                  data[i]['specialize']
                      .toString()
                      .substring(1, data[i]['specialize'].toString().length),
                  data[i]['fees'],
                  data[i]['waiting']);
            }));
  }
}
