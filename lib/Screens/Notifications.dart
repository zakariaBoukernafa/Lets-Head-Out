import 'package:flutter/material.dart';
import 'package:lets_head_out/utils/TextStyles.dart';
import 'package:lets_head_out/utils/consts.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
        appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("My Notifications", 25, kblack),
    centerTitle: true,
    elevation: 0.0,
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          notification(),
          notification(),
          notification(),
          notification()
        ],
      ),
    ));
  }

  Padding notification() {
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      height: 100,
      child: Card(

        elevation: 1,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BoldText("Lorem ipsum", 20.0, kblack),
                  Icon(Icons.more_horiz,size: 20.0,color: kblack,)
                ],
              ),
              NormalText("Lorem ipsum dolor sit amet, consectetur.",kgreyDark,16),
              NormalText("07,Mar at 15:30 pm",kdarkBlue,12),


            ],
          ),
        ),
      ),
    ),
  );
  }
}
