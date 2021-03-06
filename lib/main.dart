import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/moon.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            ),
            ),
            SizedBox(height: 10.0,),
            Text('MOHNISH GOYAL',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                  fontFamily: 'IndieFlower',
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Current Level',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text('$level',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text('mohnishgoyal26@gmail.com',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'IndieFlower',
                  color: Colors.grey[400],
                  letterSpacing: 1.0
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
