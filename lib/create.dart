import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:pay_march/varification.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  int defaulttabcontroller = 0;
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, top: 50),
              child: Image.asset("assets/s.png"),
            ),
            Container(
              width: 380,
              height: 450,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 247, 247),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 20),
                    child: Text(
                      "Create Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        onTap: (value) {
                          setState(() {
                            defaulttabcontroller = value;
                          });
                        },
                        unselectedLabelColor: Colors.black38,
                        dividerColor: Colors.white,
                        indicatorColor: Colors.white,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        tabs: [
                          Tab(
                            child: Text("Email"),
                          ),
                          Tab(
                            child: Text("Phone"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  defaulttabcontroller == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 25),
                              child: Text(
                                "@ Email ID",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 20),
                              width: 300,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 248, 247, 247),
                              ),
                              child: TextField(
                                controller: email,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Enter your Email",
                                  hintStyle: TextStyle(color: Colors.black38),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0.1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30, top: 25),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 81, 136, 163),
                                  minimumSize: Size(300, 50),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                onPressed: () {
                                  if (email.text.toString() !=
                                      "email@gmail.com") {
                                    Fluttertoast.showToast(msg: "Error");
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Varification(),
                                        ));
                                  }
                                },
                                child: Text(
                                  "continue",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          margin: EdgeInsets.only(left: 30, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile number",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 300,
                                height: 50,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "Enter your mobile number",
                                    hintStyle: TextStyle(color: Colors.black38),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 30, top: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 81, 136, 163),
                                    minimumSize: Size(300, 50),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
