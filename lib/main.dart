// import 'dart:js';
// import 'package:js/js.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditProfilePage(),
    ));

// ignore: camel_case_types, use_key_in_widget_constructors

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  //PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  final cinum = new TextEditingController();
  final stname = new TextEditingController();
  final gstnum = new TextEditingController();
  final cnum1 = new TextEditingController();
  final cnum2 = new TextEditingController();
  final adress1 = new TextEditingController();
  final adress2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/profile.png"),
                            // _imageFile == null
                            //     ? AssetImage("assets/prathvi.jpeg")
                            //     : FileImage(File(_imageFile.path)),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.blue[600],
                          ),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((builder) => bottomSheet()),
                              );
                            },
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: cinum,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "CI NUMBER",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter CI Number",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: stname,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "STORE NAME",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter Store Name",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: gstnum,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "GST NUMBER",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter GST Number",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: cnum1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "CONTACT NUMBER 1",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter Contact Number",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: cnum2,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "CONTACT NUMBER 2",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter Contact Number",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: adress1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "ADDRESS 1",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter Address",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35.0),
                    child: TextField(
                      controller: adress2,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 3),
                          labelText: "ADDRESS 2",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter Address",
                          hintStyle: TextStyle(
                            fontSize: 14, //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: deprecated_member_use
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                      );
                    },
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      var cinum_entered = cinum.text;
                      var stname_entered = stname.text;
                      var gstnum_entered = gstnum.text;
                      var cnum1_entered = cnum1.text;
                      var cnum2_entered = cnum2.text;
                      var adress1_entered = adress1.text;
                      var adress2_entered = adress2.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profile(
                                  cin: cinum_entered,
                                  stn: stname_entered,
                                  gstn: gstnum_entered,
                                  cn1: cnum1_entered,
                                  cn2: cnum2_entered,
                                  ad1: adress1_entered,
                                  ad2: adress2_entered)));
                    },
                    color: Colors.blue[600],
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomSheet() {
  return Container(
    height: 100.0,
    width: 100.0,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose Profile Photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ignore: deprecated_member_use
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("camera"),
            ),
            // ignore: deprecated_member_use
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallary"),
            ),
          ],
        )
      ],
    ),
  );
}

void takePhoto(ImageSource source) async {
  //final pickedFile = await _picker.getImage(
  //   source: source,
  // );
  // setState(() {
  //   _imageFile = pickedFile;
  // });
}

class profile extends StatelessWidget {
  var cin;
  var stn;
  var gstn;
  var cn1;
  var cn2;
  var ad1;
  var ad2;

  profile(
      {@required this.cin,
      this.stn,
      this.gstn,
      this.cn1,
      this.cn2,
      this.ad1,
      this.ad2});
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
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    // ignore: unnecessary_string_interpolations
                    backgroundImage: AssetImage("assets/profile.png"),
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
                  'CONTACT NUMBER 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$cn1',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'CONTACT NUMBER 2',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$cn2',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'ADDRESS 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$ad1',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'ADDRESS 2',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(height: 3.0),
                Text(
                  '$ad2',
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
