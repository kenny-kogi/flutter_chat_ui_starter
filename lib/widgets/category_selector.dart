import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}
int selectedindex = 0;
final List<String> categories = ["messages", "online", "Groups", "Requests"];
class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 90.0,
          color: Theme.of(context).primaryColor,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index){
                return GestureDetector(

                  onTap: (){
                    selectedindex = index;
                  },
                                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,
                    vertical: 30.0),
                    child: Text(categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: index == selectedindex? Colors.white: Colors.white60,
                      letterSpacing: 1.2 ),
                    ),
                  ),
                );
            } ),
    );
  }
}