import 'package:flutter/material.dart';

import 'package:pay_march/pay.dart';

// ignore: must_be_immutable
class sendMoney extends StatefulWidget {
  bool ischeck;
  sendMoney(this.ischeck, {super.key});

  @override
  State<sendMoney> createState() => _sendMoneyState();
}

List<Map<String, String>> mylist = [
  {
    "imageurl": "assets/face.png",
    "name": "Nak Kake",
    "mobile": "987654321",
    "nak": " | \$Nak#235",
  },
  {
    "imageurl": "assets/human.png",
    "name": "Max",
    "mobile": "786489324",
    "nak": " | \$Max235",
  },
  {
    "imageurl": "assets/M.png",
    "name": "shalen",
    "mobile": "574290637",
    "nak": " | \$shalen235",
  }
];

List<Map<String, String>> filteredList = [];
void filterResult(String searchText) async {
  if (filteredList.isNotEmpty) {
    filteredList = mylist
        .where((item) =>
            item['name']!.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  } else {
    filteredList = mylist;
  }
}

class _sendMoneyState extends State<sendMoney> {
  TextEditingController mysearch = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterResult(mysearch.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                widget.ischeck ? "Request money" : "Send Money",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: 320,
              height: 35,
              child: TextField(
                controller: mysearch,
                onChanged: (value) {
                  setState(() {
                    filterResult(value.toString());
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search by paytag, number or name",
                  hintStyle: TextStyle(
                      height: 1, color: const Color.fromARGB(96, 36, 25, 25)),
                  suffixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                widget.ischeck ? "Recently Request" : "Recently Paid",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 7, 42, 102),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/M.png",
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Michela Ra.."),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 184, 181, 181),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/face.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Nak Kake"),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/face.png",
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("David S"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All From Your Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      filteredList[index]["imageurl"]
                                          .toString(),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      paying(),
                                                ));
                                          },
                                          child: Text(
                                            filteredList[index]["name"]
                                                .toString(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 5),
                                        child: Text(
                                          filteredList[index]["mobile"]
                                              .toString(),
                                          style:
                                              TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 20),
                                    child: Text(
                                      filteredList[index]["nak"].toString(),
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
