import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/cp.jpg"),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/telusko.png"),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/ts.png"),
                  // child: Image.asset("images/ts.png"),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/cwh.jpg"),
              ),
            ],
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
                  child: Text("Today",
                      style: TextStyle(fontWeight: FontWeight.w700))),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.all(10),
                  child: Text("Continue watching ",
                      style: TextStyle(fontWeight: FontWeight.w700))),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                Image.asset("images/g.jpg"),
                Image.asset("images/e.jpg"),
                Image.asset("images/f.jpg"),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
