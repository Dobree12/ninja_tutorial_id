import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int ninjaLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card',
        style:TextStyle(color:Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 139, 139, 139),
        elevation: 0,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel +=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey,
      ) ,
      body:Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
             color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chun-li',
              style: TextStyle(
                color:Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color:Color.fromARGB(255, 194, 192, 186),
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color:Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 30.0,),
                 Row(
                  children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 201, 199, 199),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                      'johndoe@gmai.com',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                 ),
               ],
              ),
             ),
           );
   }
}
