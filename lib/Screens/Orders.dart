import 'package:flutter/material.dart';
import 'package:lets_head_out/utils/RecommendationImage.dart';
import 'package:lets_head_out/utils/TextStyles.dart';
import 'package:lets_head_out/utils/consts.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        title: BoldText("My Orders", 25, kblack),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Scaffold(
        backgroundColor: kwhite,
        appBar: TabBar(
          labelColor: kdarkBlue,
          labelStyle:
              TextStyle(fontFamily: "nunito", fontWeight: FontWeight.bold),
          controller: tabController,
          indicatorColor: kdarkBlue,
          tabs: <Widget>[
            Tab(text: "Flights"),
            Tab(text: "Hotels"),
            Tab(text: "Deliveries"),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.person),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        BoldText("Current order", 20.0, kblack),
                        BoldText("More", 16, kdarkBlue),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Container(
                      width: MediaQuery.of(context).size.width-80,
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width-80,
                            height: 200.0,
                            child: ClipRRect(
                                borderRadius: new BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: Image.asset(
                                  "assets/sheraton.jpg",
                                  fit: BoxFit.fitHeight,
                                )),
                          ),
                          BoldText("sheraton", 20.0, kblack),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              NormalText("Oran", kgreyDark, 12.0),
                              Icon(
                                Icons.location_on,
                                color: kgreyDark,
                                size: 16.0,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        BoldText("Past order", 20.0, kblack),
                        BoldText("More", 16, kdarkBlue),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      width: 400,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          RecommendationImage("assets/sheraton.jpg", "Sheraton", "Oran"),
                          RecommendationImage("assets/Meridien.jpg", "Meridien", "Oran"),
                          RecommendationImage("assets/ibis.jpg", "Ibis", "Oran"),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Icon(Icons.restaurant),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
