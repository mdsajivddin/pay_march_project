import 'package:flutter/material.dart';
import 'package:pay_march/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showcondition = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        showcondition = true;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => homepage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "assets/pay.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => homepage(),
          //         ));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.only(top: 500),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Center(
          //           child: Container(
          //             width: 50,
          //             height: 50,
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               shape: BoxShape.circle,
          //             ),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Text(
          //                   "Go",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold, fontSize: 20),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
