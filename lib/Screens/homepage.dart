import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:plants_disease_detector/models/slidermodel.dart';
import 'package:plants_disease_detector/screens/drawer.dart';
import 'package:plants_disease_detector/utils/datagenerator.dart';
import 'package:plants_disease_detector/utils/itemmodel.dart';
import 'package:plants_disease_detector/utils/slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<TSlider> mSliderList;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    mSliderList = getSliders();
  }

  
  
  @override
  Widget build(BuildContext context) {
    var l = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu, color: Colors.black),
          //   onPressed: () {
          //     _scaffoldKey.currentState.openDrawer();
          //   },
          // ),
          actionsIconTheme:IconThemeData(color: Colors.black),
          title: Text('Dashboard', style: boldTextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                toast('Profile');
              },
              icon: Icon(Icons.notifications, color: Colors.black,),
            ),
            IconButton(
              onPressed: () {
                toast('Profile');
              },
              icon: Image.network(
                      'https://tecake.com/wp-content/uploads/2018/07/student-profile-gabriela-mills-college.jpg')
                  .cornerRadiusWithClipRRect(20),
            )
          ],
        ),
        drawer: UserDrawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          //padding: EdgeInsets.only(top: 90),
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 16),
              TSliderWidget(),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          Text("Diseases"),
                          Padding(
                            padding: EdgeInsets.only(left: l - 135),
                            child: GestureDetector(
                                onTap: () {}, child: Text("View All")),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Item(
                                title: "Disease 1",
                                photo: "assets/images/Potato-leaf-blight.jpg",
                                description:
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                solution: "Injection",
                              ),
                              Item(
                                title: "Disease 2",
                                photo: "assets/images/Potato-leaf-blight.jpg",
                                description: "I am Eren Yeager",
                                solution: "Death",
                              ),
                              Item(
                                title: "Disease 3",
                                photo: "assets/images/Potato-leaf-blight.jpg",
                                description: "I am levi",
                                solution: "KIll",
                              ),
                              Item(
                                title: "Disease 1",
                                photo: "assets/images/Potato-leaf-blight.jpg",
                                description: " I am Akame",
                                solution: "Kill",
                              ),
                              SizedBox(
                                width: 15,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
