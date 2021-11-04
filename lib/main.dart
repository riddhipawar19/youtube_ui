import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/home.dart';
import 'package:youtube_clone/pages/library.dart';
import 'package:youtube_clone/pages/subscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            body: TabBarView(children: [
              Home(),
              Text("k"),
              Text("wjk"),
              Subscription(),
              Library()
            ]),
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Row(children: [
                Image.asset("images/logo.png", width: 44),
                Text("YouTube",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Gothic",
                    )),
                Spacer(),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none_outlined)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Image.asset("images/user.png")),
                    )
                  ],
                )
              ]),
            ),
            bottomNavigationBar: menu(),
          )),
    );
  }

  Widget menu() {
    return Container(
        height: 60,
        color: Colors.black,
        child: TabBar(tabs: [
          Tab(
              icon: Icon(Icons.home_filled),
              child: Text("Home", style: TextStyle(fontSize: 7))),
          Tab(
              icon: Icon(Icons.explore),
              child: Text("Explore", style: TextStyle(fontSize: 7))),
          Tab(icon: Icon(Icons.add_circle_outline, size: 40)),
          Tab(
              icon: Icon(Icons.subscriptions),
              child: Text("Subscript",
                  maxLines: 1, style: TextStyle(fontSize: 7))),
          Tab(
              icon: Icon(Icons.video_library_outlined),
              child: Text("Library", style: TextStyle(fontSize: 7))),
        ]));
  }
}
