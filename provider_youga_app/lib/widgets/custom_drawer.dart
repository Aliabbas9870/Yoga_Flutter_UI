import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState(); 
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(

        children: [
          Container(

            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/YBG.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.restart_alt,
              size: 28,
            ),
            title: Text(
              "Progress",
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share_rounded,
              size: 28,
            ),
            title: Text(
              "Share With Friends",
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
             ListTile(
            leading: Icon(
              Icons.star_rate_rounded,
              size: 28,
            ),
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
             ListTile(
            leading: Icon(
              Icons.comment,
              size: 28,
            ),
            title: Text(
              "Feedback",
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
             ListTile(
            leading: Icon(
              Icons.security,
              size: 28,
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),

          Divider(
            // height: 5,
            thickness: 1,
            indent: 30,
            endIndent: 30,
            color: Colors.black,
          ),
          Text("Version 1.3.1", style: TextStyle(fontSize: 15, color: Colors.grey,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
