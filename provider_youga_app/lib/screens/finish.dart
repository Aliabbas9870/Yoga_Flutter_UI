import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  const Finish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [Image.asset("assets/images/tropy.jpeg")],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "125",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "KCal",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("12",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Text("Minut",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Do It Again",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Text("Share",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
                ]),
          ),
          Divider(),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 72,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Rate Our App",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
