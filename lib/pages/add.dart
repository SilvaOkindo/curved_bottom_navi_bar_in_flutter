import 'package:flutter/material.dart';

class Add extends StatelessWidget {
const Add({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Column(
      children: const [
        Text(
          "Add page", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 100,),
          CircleAvatar(radius: 80,child: Icon(Icons.add, size: 120),),
          SizedBox(height: 100,),
          Text(
          "Add content", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
          ),
      ],
    );
  }
}