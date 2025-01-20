import 'package:flutter/material.dart';
import 'package:pay_march/success.dart';

class paying extends StatefulWidget {
  const paying({super.key});

  @override
  State<paying> createState() => _payingState();
}

class _payingState extends State<paying> {
  String payment = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 219, 219),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/face.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Nak Kake",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "+1(678)591-2720",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Paytag:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(" \$NakKake"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("You are paying"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      payment = value;
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(179, 185, 180, 180),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 220,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Add Message",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 241, 237, 237),
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
              Container(
                margin: EdgeInsets.only(top: 120),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Success(payment),
                        ));
                  },
                  child: Text(
                    "Pay \$$payment",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
