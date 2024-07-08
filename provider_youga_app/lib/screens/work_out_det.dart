import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_youga_app/screens/finish.dart';

class WorkOutDet extends StatelessWidget {
  const WorkOutDet({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/WY.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text("Alumn Ready",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 29)),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 95),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(23)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("00 : ",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Consumer<TimerModelSec>(
                            builder: (context, MyModel, child) {
                              return Text(MyModel.count.toString(),
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold));
                            },
                          ),
                        ],
                      )),
                  Spacer(),
                  Consumer<TimerModelSec>(
                    builder: (context, MyModel, child) {
                      return ElevatedButton(
                          onPressed: () {
                            MyModel.show();
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                "Pasue",
                                style: TextStyle(fontSize: 15),
                              )));
                    },
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Previous",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Next",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Divider(),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 13),
                        child: Text(
                          "Next : Alume",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ),
            Consumer<TimerModelSec>(
              builder: (context, MyModel, child) {
                return Visibility(
                    visible: MyModel.visible,
                    child: Container(
                      color: Colors.black.withOpacity(0.8),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pasue",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              MyModel.hide();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15),
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15),
                              child: Text(
                                "Quit",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15),
                              child: Text(
                                "Restart",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TimerModelSec with ChangeNotifier {
  bool visible = false;

  void show() {
    visible = true;
    notifyListeners();
  }

  void hide() {
    visible = false;
    notifyListeners();
  }

  TimerModelSec(context) {
    MyTimerSec(context);
  }

  int count = 30;
  MyTimerSec(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      count--;
      notifyListeners();
      if (count == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Finish()));
      }
    });
  }
}
