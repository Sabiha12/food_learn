import 'package:flutter/material.dart';
import 'package:flutter_food_app/scr/widgets/title.dart';
import '../commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                    text: "What would you like to eat?", size: 18, weight: FontWeight.normal, color: black,
                    ),),
                Stack(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300]!, //! to remove error for []
                      offset: Offset(1,1),
                      blurRadius: 4
                    )
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: red,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurant",
                      border: InputBorder.none
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: red,),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                  color: red[50]!, //! to remove error for []
                                  offset: Offset(4,6),
                                  blurRadius: 20
                              )
                            ],
                          ),
                          child: Padding(padding: EdgeInsets.all(4),
                            child: Image.asset("images/logo.png", width: 50,),)
                      ),
                      SizedBox(height: 10,),
                      CustomText(text: "Salad", size: 16, color: black, weight: FontWeight.bold)
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      )
    );
  }
}
