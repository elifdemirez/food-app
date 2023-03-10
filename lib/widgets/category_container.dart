import 'package:flutter/material.dart';
import 'package:food_app/main_page.dart';
import 'package:food_app/main.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({Key? key}) : super(key: key);

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer>{

  @override
  Widget build(BuildContext context){
    return Container(
        height: 70,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey,
              )
            ]
        ),
        child: Container(
            color: Colors.white,
            width: 70,
            height: 70,
          child: Text("Pasta",style: TextStyle(color: Colors.black87),),
            ),

      );



  }
}