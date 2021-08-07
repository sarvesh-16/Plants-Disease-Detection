import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_disease_detector/models/slidermodel.dart';
import 'package:plants_disease_detector/utils/constants.dart';
import 'package:plants_disease_detector/utils/datagenerator.dart';
import 'package:plants_disease_detector/utils/dots_indicator/src/dots_decorator.dart';
import 'package:plants_disease_detector/utils/dots_indicator/src/dots_indicator.dart';
import 'package:plants_disease_detector/utils/getitems.dart';
import 'package:plants_disease_detector/utils/sliderwidget.dart';
import 'package:plants_disease_detector/utils/widgets.dart';

class TSliderWidget extends StatefulWidget {
  // final List<TSlider> mSliderList;

  // TSliderWidget({this.mSliderList});
  @override
  TSliderWidgetState createState() => TSliderWidgetState();
}

class TSliderWidgetState extends State<TSliderWidget> {
  var currentIndexPage = 0;
  //  List<TSlider> sliderlist = List<TSlider>(3);
   

  // @override
  // void initState() {
  //   super.initState();
  //   mSliderList = getSliders();
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    width = width - 50;
    final Size cardSize = Size(width, width / 1.8);
    return Column(
      children: <Widget>[
        TCarouselSlider(
          viewportFraction: 0.9,
          height: cardSize.height,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          items: mSliderList.map((slider) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: cardSize.height,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: new BorderRadius.circular(12.0),
                        child: CachedNetworkImage(
                          imageUrl: slider.image,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: cardSize.height,
                          placeholder: (context, url) => Center(
                            child: Container(
                              child: Theme(
                                data: ThemeData.light(),
                                child: CupertinoActivityIndicator(
                                  animating: true,
                                  radius: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            text(slider.title,
                                textColor: Color(0XFFFFFFFF),
                                fontSize: textSizeNormal,
                                fontFamily: fontAndina),
                            SizedBox(height: 16),
                            text1(slider.subTitle,
                                textColor: Color(0XFFFFFFFF),
                                fontSize: textSizeMedium,
                                maxLine: 2,
                                isCentered: true),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }).toList(),
          onPageChanged: (index) {
            setState(() {
              currentIndexPage = index;
            });
          },
        ),
        SizedBox(
          height: 16,
        ),
        DotsIndicator(
            dotsCount: mSliderList.length,
            position: currentIndexPage,
            decorator: DotsDecorator(
              size: const Size.square(5.0),
              activeSize: const Size.square(8.0),
              color: Color(0XFFDADADA),
              activeColor: Color(0XFF5959fc),
            ))
      ],
    );
  }
}
