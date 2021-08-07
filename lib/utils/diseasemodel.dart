import 'package:flutter/material.dart';

class DiseaseModel extends StatelessWidget {
  final String title, description, solution, photo;
  DiseaseModel({this.title, this.description, this.solution, this.photo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0, right: 10, top: 10,),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  ),
                  child: Container(child: Image.asset(photo))),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0, top: 10, right: 10),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 340,
                        child: Text("Description: $description", style: TextStyle(fontSize: 16))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0, top: 10, right: 10, bottom: 10),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        width: 340,
                        child: Text("Solution: $description", style: TextStyle(fontSize: 16))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}