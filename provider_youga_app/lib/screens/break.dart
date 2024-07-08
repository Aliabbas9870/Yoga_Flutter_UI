import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreakTime extends StatelessWidget {
  const BreakTime({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context) => TimerModelSec(context),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/break.jpeg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
              ),
              Spacer(),
              Text(
                "Break Time",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Consumer<TimerModelSec>(
                builder: (context, MyModel, child) {
                  return Text(MyModel.count.toString(),
                      style: TextStyle(
                          fontSize: 53,
                          color: Colors.black,
                          fontWeight: FontWeight.bold));
                },
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: Text(
                      "Skip",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              Spacer(),
              Spacer(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Previous",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ],
                ),
              ),
              Divider(),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 13),
                    child: Text(
                      "Next : Alume",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TimerModelSec with ChangeNotifier {
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
            context, MaterialPageRoute(builder: (context) => BreakTime()));
      }
    });
  }
}
