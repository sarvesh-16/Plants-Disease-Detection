import 'package:flutter/material.dart';
import 'package:plants_disease_detector/utils/diseasemodel.dart';

class Item extends StatelessWidget {
  final String title, photo, description, solution;
  Item({this.title, this.photo, this.description,this.solution});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left:15),
                      child: GestureDetector(
                        onTap: (){
                          print("Hello");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseaseModel(title: title,
                          photo: photo,
                          description: description,
                          solution: solution,
                          )));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10)
                          ),
                          child: Stack(
                            children: [
                              Container(
                              height: 200,
                              width: 150,
                              child: Image.asset(photo, fit: BoxFit.fill,),
                              color: Colors.amber,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0, bottom: 15),
                                  child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                                ),
                              ],
                            )
                            ],
                            
                            ),
                        ),
                      ),
          );
  }
}