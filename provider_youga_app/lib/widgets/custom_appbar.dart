import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final AnimationController animationController;
  final Animation colorsTween, yogaTween, draweTween, homeTween, iconTween;
  final Function()? onPressed;

  CustomAppBar({
    required this.animationController,
    required this.onPressed,
    required this.colorsTween,
    required this.yogaTween,
    required this.draweTween,
    required this.homeTween,
    required this.iconTween,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
    
      right: 0,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) => AppBar(
          leading: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.dehaze),
          ),
          elevation: 0.0,
          backgroundColor: colorsTween.value,
          title: Row(
            children: [
              Text(
                "Home ",
                style: TextStyle(
                    fontSize: 20,
                    color: homeTween.value,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Yoga",
                style: TextStyle(
                    fontSize: 20,
                    color: yogaTween.value,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [ 
            Icon(
              Icons.notifications,
              color: iconTween.value,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage("assets/images/circleG.jpeg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
