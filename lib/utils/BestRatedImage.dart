import 'package:flutter/material.dart';

import 'TextStyles.dart';
import 'consts.dart';

class BestRatedImage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final double rate;

  BestRatedImage(this.imageUrl, this.name, this.location,this.rate);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 200,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 180.0,
              height: 180.0,
              child: ClipRRect(
                  borderRadius: new BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: BoldText(name, 20.0, kblack),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NormalText(location, kgreyDark, 16.0),
                  Icon(
                    Icons.location_on,
                    color: kgreyDark,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Container(
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: korange,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: kwhite,
                          size: 15.0,
                        ),
                        BoldText(rate.toString(), 15.0, kwhite)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
