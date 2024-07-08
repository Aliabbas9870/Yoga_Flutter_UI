import 'package:flutter/material.dart';
import 'package:provider_youga_app/screens/rUready.dart';

class Startup extends StatefulWidget {
  const Startup({super.key});

  @override
  State<Startup> createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ruready()));
          },
          child: Text("Start")),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                "Yoga",
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                "assets/images/WY.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            expandedHeight: 300,
            // title: Text('AppBar'),
            // leading: Icon(Icons.backup_sharp),
            actions: [
              IconButton(
                icon: Icon(Icons.thumb_up_alt),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "16 mins || 20 workouts",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Divider(),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ListTile(
                            leading: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image.asset(
                                "assets/images/WY.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text("Workout $index",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            subtitle:
                                Text(index % 2 == 0 ? "Completed" : "Pending"),
                          ),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
