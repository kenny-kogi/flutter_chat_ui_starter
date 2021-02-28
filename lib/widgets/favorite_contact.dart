

import 'package:flutter/material.dart';

class FavoriteContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Text("Favorite Contacts"),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: (){},
                      )
                    ]),
                  )
                ],),
    );
  }
}