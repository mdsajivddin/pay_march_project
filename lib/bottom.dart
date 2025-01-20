import 'package:flutter/material.dart';
import 'package:pay_march/send.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

List<Map<String, String>> mylist = [];

class _bottomState extends State<bottom> {
  bool showcondition = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        showcondition = true;
        setState(() {
          mylist.addAll([
            {
              "imageurl": "assets/human.png",
              "name": "Jon Deo (For Grocery)",
              "time": "8.23 PM",
              "ID": "| Trans ID: 950893",
              "pay": "+\$18"
            },
            {
              "imageurl": "assets/face.png",
              "name": "John Don (Grocery)",
              "time": "8.00 PM",
              "ID": "| Trans ID: 87650",
              "pay": "-\$18"
            },
            {
              "imageurl": "assets/human.png",
              "name": "Jon (For Grocery)",
              "time": "9.23 PM",
              "ID": "| Trans ID: 27594",
              "pay": "+\$18"
            }
          ]);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(
          child: Image.asset(
            "assets/human.png",
            width: 25,
            height: 25,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            "\$Vin#265",
            style: TextStyle(fontSize: 20),
          ),
        ),
        leadingWidth: 70,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.qr_code),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications_active),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(Icons.child_care),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 30),
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 65,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 75, 140, 170),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.money,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => sendMoney(true),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Request Money",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 160,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.near_me_outlined,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => sendMoney(false),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Send Money",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 238, 238),
                borderRadius: BorderRadius.circular(20),
              ),
              child: showcondition
                  ? Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recent  Transaction",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              child: ListView.builder(
                                itemCount: mylist.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 320,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left: 8),
                                              child: Image.asset(
                                                mylist[index]["imageurl"]
                                                    .toString(),
                                                width: 35,
                                                height: 35,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: 15, left: 10),
                                                  child: Text(
                                                    mylist[index]["name"]
                                                        .toString(),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10, top: 5),
                                                      child: Text(
                                                        mylist[index]["time"]
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 8),
                                                      child: Text(
                                                        mylist[index]["ID"]
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              width: 70,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 243, 232, 232),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    mylist[index]["pay"]
                                                        .toString(),
                                                    style: mylist[index]["pay"]
                                                            .toString()
                                                            .startsWith("+")
                                                        ? TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 20)
                                                        : TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Show more +",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                        ),
                      ),
                    ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 236, 236),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bills & More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text("Show more"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white70,
                              ),
                              child: Icon(Icons.blender),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Water"),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.album),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Electricity"),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.home),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Rent"),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.mobile_friendly),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Phone"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 236, 236),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/gift.png",
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Invite friends to",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Pay Merch",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  "assets/whatsapp.png",
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Get \$5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottum(),
    );
  }

  Widget bottum() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.black38,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "history",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border),
          label: "star",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "setting",
        ),
      ],
    );
  }
}
