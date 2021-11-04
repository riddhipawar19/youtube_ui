import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(children: [
        Container(
          margin: EdgeInsets.all(8),
          color: Colors.grey[700],
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset("images/youtube_shorts.png", width: 22),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("Shorts",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    )),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(10),
                child: Text("All",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700))),
            Container(
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(10),
                child: Text("Flutter",
                    style: TextStyle(fontWeight: FontWeight.w700))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.all(10),
                child: Text("React JS",
                    style: TextStyle(fontWeight: FontWeight.w700))),
          ],
        )
      ]),
      Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("images/a.jpg"),
            Image.asset("images/b.jpg"),
            Image.asset("images/c.jpg"),
            Image.asset("images/d.jpg"),
            Image.asset("images/e.jpg"),
            Image.asset("images/f.jpg"),
            Image.asset("images/g.jpg"),
          ]),
        ),
      )
    ]));
  }
}
