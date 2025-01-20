import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:pay_march/bottom.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  TextEditingController first = TextEditingController();
  TextEditingController last = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset("assets/success.png"),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 237, 237),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.people_outline_rounded),
                            Text(
                              " First name",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, right: 20),
                          height: 50,
                          child: TextField(
                            controller: first,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "Enter your first name",
                              hintStyle: TextStyle(color: Colors.black38),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.people_outline_rounded),
                            Text(
                              " Last name",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, right: 20),
                          height: 50,
                          child: TextField(
                            controller: last,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
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
                              hintText: "Enter your last name",
                              hintStyle: TextStyle(color: Colors.black38),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 30),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 21, 146, 209),
                              minimumSize: Size(300, 50),
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => bottom(),
                                  ));

                              // if (first.text.toString() == "sajivddin" &&
                              //     last.text.toString() == "ansari") {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => bottom(),
                              //       ));
                              // } else {
                              //   Fluttertoast.showToast(msg: "Invalid");
                              // }
                            },
                            child: Text(
                              "Create Account",
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
