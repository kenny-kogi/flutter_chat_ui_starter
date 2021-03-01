

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/charts_screen.dart';

import '../models/message_model.dart';

class FavoriteContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                        Text("Favorite Contacts",
                         style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey
                               )),
                        IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: (){},
                        )
                      ]),
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: favorites.length,
                        itemBuilder: (BuildContext context, int index){
                          return GestureDetector(
                        onTap: () => Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_) => ChartScreen(
                            user: favorites[index]
                          ))),
                              child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(favorites[index].imageUrl),
                                ),
                              SizedBox(height: 6.0),
                              
                                Text(favorites[index].name,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey
                                 ),)
                              ], ),
                            ),
                          );
                        }),
                    )
                  ],),
      ),
    );
  }
}