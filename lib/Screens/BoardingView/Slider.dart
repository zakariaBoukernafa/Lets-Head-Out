
import 'package:flutter/cupertino.dart';
import 'package:lets_head_out/utils/consts.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
        @required this.sliderHeading,
        @required this.sliderSubHeading});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/one.png',
      sliderHeading: SLIDER_HEADING_1,
      sliderSubHeading: SLIDER_DESC),
  Slider(
      sliderImageUrl: 'assets/two.png',
      sliderHeading: SLIDER_HEADING_2,
      sliderSubHeading: SLIDER_DESC),
  Slider(
      sliderImageUrl: 'assets/three.png',
      sliderHeading: SLIDER_HEADING_3,
      sliderSubHeading: SLIDER_DESC),
];