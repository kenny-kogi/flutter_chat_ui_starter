import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/widgets/category_selector.dart';
import 'package:flutter_chat_ui_starter/widgets/charts_section.dart';
import 'package:flutter_chat_ui_starter/widgets/favorite_contact.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){

          },
          iconSize: 30.0,
          color: Colors.white,
        ),
        
        centerTitle: true,
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
          elevation: 0.0,

          actions: [
            IconButton(
          icon: Icon(Icons.search),
          onPressed: (){

          },
          iconSize: 30.0,
          color: Colors.white,
        ),
          ],
      ),
      body: Column(children: [
          CategorySelector(),
          Expanded(
                      child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
                ),
              
              
              
              ),
             child: Column(children: [
               FavoriteContact(),
               ChatsSection(),

             ],),
            
            ),
          
            
          ),
],
  )
    );
  }
}
