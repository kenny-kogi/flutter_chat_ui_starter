
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class ChatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return                Expanded(
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
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index){
                    final Message chat = chats[index];
                    return Container(
                      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                  ),

                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Row(children: [ 
                          CircleAvatar(backgroundImage: AssetImage(chat.sender.imageUrl),
                          radius: 30.0,),
                          SizedBox(width: 10.0),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(chat.sender.name,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text(chat.text,
                              style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600
                            ),
                            overflow: TextOverflow.ellipsis,),
                          )

                            ] ),

                          
                          ]),
                          Column(children: [
                            Text(chat.time,
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15.0),),
                            Container(
                              width: 40.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30.0)
                                
                              ),
                              alignment: Alignment.center,
                              child: Text("New"))
                          ],)
                          
                          
                          ],

            

                          

                      ),
                    );
                  }),
              ),
                   
         ),
               );
  }
}