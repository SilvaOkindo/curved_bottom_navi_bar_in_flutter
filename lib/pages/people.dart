import 'package:flutter/material.dart';

class People extends StatelessWidget {
const People({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: const [
        Text(
          "People page", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 100,),
          CircleAvatar(radius: 80,child: Icon(Icons.people, size: 120),),
          SizedBox(height: 100,),
          Text(
          "People content", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
          ),
      ],
    );
  }
}