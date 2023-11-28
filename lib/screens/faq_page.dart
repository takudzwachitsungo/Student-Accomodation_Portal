import 'package:ecommerce_int2/app_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List<Panel> panels = [
    Panel(
        'WHERE ARE YOUR HOSTELS LOCATED',
        'Generally, Transithomes has three hostels in Harare and one is in CBD and the other two are found in Mount Pleasent',
        false),
    Panel(
        'AMONG ALL HOSTELS WHICH ONE IS THE BEST?',
        'All our hostels are a great place to stay, but if you are more information you may vist our website',
        false),
    Panel(
        'HOW MUCH IS TO RENT?',
        'Actually our rents differ with the location that you are renting.',
        false),
    Panel(
        'HOW LONG DOES IT TAKE TO APPROVE ROOM AFTER BOOKING?',
        'Your room will be approved the very same minute you book our rooms',
        false),
    Panel('HOW GOOD ARE YOUR FACILITIES ON THE SCALE OF 1-10?',
        'Our Services are super-quality we can quarantee you that', false),
    Panel('HOW GOOD ARE YOUR FACILITIES ON THE SCALE OF 1-10?',
        'Our Services are super-quality we can quarantee you that', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Settings',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, bottom: 16.0),
                child: Text(
                  'FAQ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              ...panels
                  .map((panel) => ExpansionTile(
                          title: Text(
                            panel.title,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                          children: [
                            Container(
                                padding: EdgeInsets.all(16.0),
                                color: Color(0xffFAF1E2),
                                child: Text(panel.content,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)))
                          ]))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Panel {
  String title;
  String content;
  bool expanded;

  Panel(this.title, this.content, this.expanded);
}
