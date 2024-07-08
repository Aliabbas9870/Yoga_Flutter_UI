import 'package:flutter/material.dart';
import 'package:provider_youga_app/screens/startup.dart';
import 'package:provider_youga_app/widgets/custom_appbar.dart';
import 'package:provider_youga_app/widgets/custom_drawer.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorsTween, _yogaTween, _drawerTween, _homeTween, _iconTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorsTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.lightBlue)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    super.initState();
  }

  void handleScroll(ScrollNotification scrollNotification) {
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
    }
  }

  bool scrollListener(ScrollNotification scrollNotification) {
    handleScroll(scrollNotification);
    return true;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollListener,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 130, 50, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Streak",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "KCles",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "minutes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      // margin: EdgeInsets.all(20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(5),
                              // margin: EdgeInsets.only(right: 250),
                              child: Text(
                                "Yoga For All",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Startup()));
                            },
                            child: Container(
                              child: Stack(
                                children: [
                                  Container(
                                    // margin: EdgeInsets.all(20),
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/yogaMH.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Container(
                                    // margin: EdgeInsets.all(20),
                                    height: 160,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    right: 20,
                                    child: Text(
                                      "Yoga For Beginer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    left: 14,
                                    top: 33,
                                    right: 19,
                                    child: Text(
                                      "Last Time: 2 Feb",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                          ),
                          InkWell
                          (
                              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Startup()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(20),
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/YRG.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(20),
                                  height: 160,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 10,
                                  right: 20,
                                  child: Text(
                                    "Yoga For Beginer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  left: 14,
                                  top: 33,
                                  right: 19,
                                  child: Text(
                                    "Last Time: 2 Feb",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                          ),
                          Stack(
                            children: [
                              Container(
                                // margin: EdgeInsets.all(20),
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/yogaS.jpeg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.all(20),
                                height: 160,
                                color: Colors.black.withOpacity(0.3),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                right: 20,
                                child: Text(
                                  "Yoga For Beginer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 33,
                                right: 19,
                                child: Text(
                                  "Last Time: 2 Feb",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                          ),
                          InkWell(
                              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Startup()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(20),
                                  height: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/YBG.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(20),
                                  height: 160,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 10,
                                  right: 20,
                                  child: Text(
                                    "Yoga For Beginer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  left: 14,
                                  top: 33,
                                  right: 19,
                                  child: Text(
                                    "Last Time: 2 Feb",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
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
            CustomAppBar(
              animationController: _animationController,
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              yogaTween: _yogaTween,
              draweTween: _drawerTween,
              homeTween: _homeTween,
              iconTween: _iconTween,
              colorsTween: _colorsTween,
            ),
          ],
        ),
      ),
    );
  }
}
