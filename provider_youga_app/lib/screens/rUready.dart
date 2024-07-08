import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_youga_app/screens/work_out_det.dart';

class Ruready extends StatelessWidget {
  const Ruready({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2 - 100,
                ),
                Text(
                  "Are You Ready",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                Consumer<TimerModel>(
                    builder: (context, TimerModel timer, child) {
                  return Text(
                    timer.count.toString(),
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  );
                }),
                Spacer(),
                Divider(),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 13),
                      child: Text(
                        "Next : Alume",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    MyTimer(context);
  }

  int count = 5;
  MyTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      count--;
      notifyListeners();
      if (count == 0) {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDet()));
      }
    });
  }
}
