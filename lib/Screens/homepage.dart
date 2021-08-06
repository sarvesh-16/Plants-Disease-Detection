import 'package:flutter/material.dart';
import 'package:plants_disease_detector/Helpers/itemmodel.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var l = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 0,
      ),
      drawer: Drawer(
  child: ListView(
    children: <Widget>[
      UserAccountsDrawerHeader(
  accountName: Text("Sarvesh Kale"),
  accountEmail: Text("sarvesh.kale@gmail.com"),
  currentAccountPicture: CircleAvatar(
    backgroundColor:
        Theme.of(context).platform == TargetPlatform.iOS
            ? Colors.blue
            : Colors.white,
    child: Text(
      "A",
      style: TextStyle(fontSize: 40.0),
    ),
  ),
),
      ListTile(
        title: Text("All Diseases"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        title: Text("Notification"),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        title: Text("About"),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  ),
),
      body: Container(
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
                    padding: EdgeInsets.only(left: l-135),
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Text("View All")),
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
                    Item(title: "Disease 1", photo: "assets/images/Potato-leaf-blight.jpg", 
                    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    solution: "Injection",),
                    Item(title: "Disease 2",photo: "assets/images/Potato-leaf-blight.jpg", description: "I am Eren Yeager", solution: "Death",),
                    Item(title: "Disease 3", photo: "assets/images/Potato-leaf-blight.jpg", description: "I am levi", solution: "KIll",),
                    Item(title: "Disease 1", photo: "assets/images/Potato-leaf-blight.jpg", description: " I am Akame", solution: "Kill",),
                    SizedBox(width: 15,)
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}