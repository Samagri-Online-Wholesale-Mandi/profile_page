import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit_profile.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: profile(),
    ));

String img = 'assets/prathvi.jpeg';
String cin = 'SXT1002';
String stn = 'Prabhu General Store';
String gstn = '1BM19IS118';
String cn = '9591391294';
String ad = 'Nandagokula,bellmapalli,Kukkikatte Udupi';

// ignore: camel_case_types, use_key_in_widget_constructors
class profile extends StatefulWidget {

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        elevation: 5.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('$img'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 40.0,
                  color: Colors.grey[600],
                ),

                Text(
                  'CI NUMBER',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$cin',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'STORE NAME',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$stn',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'GST NUMBER',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$gstn',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'CONTACT NUMBER',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$cn',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$ad',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 15.0),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                  color: Colors.blue[600],
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 15.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
