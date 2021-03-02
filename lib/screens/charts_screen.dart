import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/models/user_model.dart';


class ChartScreen extends StatefulWidget {

  
  final User user;
  ChartScreen({this.user});

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  _buidMessage(Message message, bool idMe){
    final Container messaged =  Container(
                width: MediaQuery.of(context).size.width * 0.75,
          margin: idMe ? EdgeInsets.only(top: 8.0, bottom: 8.0, left:80.0): EdgeInsets.only(top: 8.0, bottom: 8.0),
          
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15.0),
          decoration: BoxDecoration(
                  color:idMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
                  borderRadius: idMe ?  BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)
                  ): BorderRadius.only(
                  bottomRight: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(message.time,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600

            ),),
            SizedBox(height: 8.0),
            Text(message.text,
                style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
                fontWeight: FontWeight.w600

            ),)]),
        );
        if (idMe){
          return messaged;
        }
      return Row(
              children:[
                messaged,

              IconButton(
          icon: message.isLiked ? Icon(Icons.favorite): Icon(Icons.favorite_border),
          onPressed: (){

          },
          iconSize: 30.0,
          color: message.isLiked ? Colors.red : Colors.blueGrey,
        ),
       ]
      );
  }

  _buildMessageComposer(){
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          height: 70.0,
          color: Colors.white,

          child: Row(
            children: [
                IconButton(
                  icon: Icon(Icons.photo),
                  color: Theme.of(context).primaryColor,
                  onPressed: (){},
                ),
                Expanded(child: TextField(
                  onChanged: (value){

                  },
                  decoration: InputDecoration.collapsed(
                    hintText: "Send message"
                  ),


                )),     

                  IconButton(
                  icon: Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                  onPressed: (){},
                )
            ]
          ) ,




      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
    
        title: Text("John",
            style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
          actions: [
          IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: (){

          },
          iconSize: 30.0,
          color: Colors.white,
        ),
          ],
          elevation: 0.0,
      ),
      
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
              child: Column(children: [
                   Expanded(
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                  ),

                ),
                  child: ClipRRect(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                  ),
                    child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index){
                      final Message message = messages[index];
                      bool idMe = message.sender.id == currentUser.id;
                      return _buidMessage(message, idMe);

                    }),
                  )
                      )
                         ),
                         _buildMessageComposer()
                         ],
    ),
      ));
  }
}