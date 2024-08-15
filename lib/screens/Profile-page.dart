import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Vezeeta!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Log in and engjoy the best healthcare experience'),
                  SizedBox(
                      width: 400,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Login/SignUp',
                            style: TextStyle(color: Colors.white),
                          ),
                          style:ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ))
                          )

                          )),
                  Divider()
                ],
              ),
            ),
            IconText(Icons.panorama_photosphere, 'Country'),
            Divider(),
            IconText(Icons.sort_by_alpha_sharp, 'Language'),
            Divider(),
            IconText(Icons.email_outlined, 'E-mail'),
            Divider(),
            IconText(Icons.phone_in_talk_outlined, 'Call-Us'),
            Divider(),

          ],
        ),
      ),
    );
  }
  Widget IconText(icon,text){
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.blue[700],),
          Text(text, style: TextStyle(fontSize: 18),),
          SizedBox(width: 200,),
          Icon(Icons.arrow_forward_ios, size: 16,), 
         
      
        ],
      ),
    );
  }
}
