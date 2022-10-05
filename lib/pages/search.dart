import 'package:flutter/material.dart';

class Search extends StatelessWidget {
const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: const [
        Text(
          "Search page", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 100,),
          CircleAvatar(radius: 80,child: Icon(Icons.search_off_outlined, size: 120),),
          SizedBox(height: 100,),
          Text(
          "Search content", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
          ),
      ],
    );
  }
}