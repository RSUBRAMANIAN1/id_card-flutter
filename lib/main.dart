import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  func()async{
  const url ='https://www.linkedin.com/in/subramanian-ramamurthi-47954b191/';
   if(await canLaunch(url)){launch(url);}
   else{
     throw 'Could not launch $url';
   }
  } 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/propic.jpg'),
              ),
              Text(
                'Subramanian',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              Text(
                'Flutter Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.white ,
                  fontSize: 20.0, 
                ),
              ),
              SizedBox(
                height:20.0,
                width: 150.0,
                child: 
              Divider(
                     color: Colors.white,
                    
              ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child:ListTile(
                  leading: Icon(Icons.phone,
                    color: Colors.teal,
                   ),
                  title: Text("phone"),
                  //onTap: func('tel:$phone'),
                ),
                
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child:ListTile(
                  leading: Icon(Icons.mail,
                    color: Colors.teal,
                   ),
                  title: Text("subramanianramamurthi99@gmail.com",style: TextStyle(fontSize:13.25,fontFamily: 'SourceSansPro'),),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child:ListTile(
                  leading: Icon(Icons.assignment_ind,
                    color: Colors.teal,
                   ),
                  title: Text("Linkedin",style: TextStyle(fontSize:13.25,fontFamily: 'SourceSansPro'),),
                  onTap: func,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
