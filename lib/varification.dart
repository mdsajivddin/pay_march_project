import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pay_march/welcome.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();

  FocusNode focusnode1 = FocusNode();
  FocusNode focusnode2 = FocusNode();
  FocusNode focusnode3 = FocusNode();
  FocusNode focusnode4 = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusnode1.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              child: Image.asset("assets/man.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              height: 430,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 232, 232),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verification",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Please enter 4 digit verification code",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "sent to vineet@gmail.com",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 30, top: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: TextField(
                              controller: one,
                              autofocus: true,
                              focusNode: focusnode1,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context)
                                      .requestFocus(focusnode2);
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            child: TextField(
                              controller: two,
                              autofocus: true,
                              focusNode: focusnode2,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context)
                                      .requestFocus(focusnode3);
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            child: TextField(
                              controller: three,
                              autofocus: true,
                              focusNode: focusnode3,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context)
                                      .requestFocus(focusnode4);
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            child: TextField(
                              controller: four,
                              autofocus: true,
                              focusNode: focusnode4,
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).requestFocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 17, 122, 175),
                          minimumSize: Size(300, 50),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {
                          if (one.text.toString() == "1" &&
                              two.text.toString() == "2" &&
                              three.text.toString() == "3" &&
                              four.text.toString() == "4") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Welcome(),
                                ));
                          } else {
                            Fluttertoast.showToast(msg: "Invalid");
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Resend code in",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                          Text(
                            " 59 sec",
                            style: TextStyle(
                              color: Color.fromARGB(255, 8, 107, 156),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
