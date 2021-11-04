import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            "Recent",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          )),
      Container(
        padding: EdgeInsets.all(10),
        height: 160,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Image.asset("images/g.jpg")),
            Image.asset("images/e.jpg"),
          ],
        ),
      ),
      Column(
        children: [
          ListTile(
              leading: Icon(Icons.history),
              title: Text(
                "History",
                style: TextStyle(fontWeight: FontWeight.w800),
              )),
          ListTile(
              leading: Icon(Icons.video_collection_sharp),
              title: Text("Your videos",
                  style: TextStyle(fontWeight: FontWeight.w800))),
          ListTile(
              subtitle: Text("10 videos",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              trailing: Icon(Icons.check_circle),
              leading: Icon(Icons.download),
              title: Text("Downloads",
                  style: TextStyle(fontWeight: FontWeight.w800))),
          ListTile(
              leading: Icon(Icons.movie_sharp),
              title: Text("Your movies",
                  style: TextStyle(fontWeight: FontWeight.w800))),
          ListTile(
              subtitle: Text("9 unwatched videos",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              leading: Icon(Icons.watch_later_outlined),
              title: Text("Watch later",
                  style: TextStyle(fontWeight: FontWeight.w800))),
        ],
      )
    ]));
  }
}
