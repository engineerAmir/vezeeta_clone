import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vezeeta_mokup/custom_widget/Icon-text-doctor-card.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String title; 
  final String special;
  final num fees ; 
  final num wait ; 
  

  const DoctorCard(
    this.name,
    this.title,
    this.special,
    this.fees,
    this.wait,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 120,
              color: Colors.white.withOpacity(.96) ,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/images/doctor.png'),
                            fit: BoxFit.scaleDown)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 300,
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Doctor ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: name,
                                
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 24,
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold)
                                    )
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(title , overflow: TextOverflow.ellipsis,)),
                      RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 4.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          
                          color: Colors.amber,
                         
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text('over all rating from 114 visitors')
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: const Offset(
                        0,
                        2,
                      ),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(
                        0,
                        -2,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    //BoxShadow
                  ],
              ),
              padding:EdgeInsets.all(10),
              height: 200,
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconWithText('Dermatology specialized in ${special}', Icons.medical_services_outlined),
                  IconWithText('El-mohandseein: Abdel hamid Lotfi Street, off Al-batal Ahmed', Icons.location_on_outlined),
                  IconWithText('Fees: ${fees}', Icons.attach_money_rounded),
                  IconWithText('Waiting Time: ${wait} Minutes', Icons.circle_outlined),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey[200] ,
                        width: 280,
                        height: 35,
                        child: Text('Available Today 06:00 PM'),
                      ),
                     Container(
                      width: 70,
                      height: 35,
                     alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                         color: Color.fromARGB(255, 227, 15, 0),
                      ),
                      child: Text('Book', style: TextStyle(color: Colors.white),),
                     )
                    ],
                  )
                ],
              ),
            )
        
          ],
        ),
      );
    
  }
}
