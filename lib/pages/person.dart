import 'package:flutter/material.dart';

class Person extends StatelessWidget {
const Person({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "Person page", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 100,),
          CircleAvatar(radius: 80,child: Icon(Icons.person, size: 120),),
          SizedBox(height: 100,),
          Text(
          "Person content", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
          ),
      ],
    );
  }
}