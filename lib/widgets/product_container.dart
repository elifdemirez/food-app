import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  const ProductContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}
class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context){
    return Container(
      width: 380,
      height: 70,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/hamburger.jpg",),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text("CHICKEN ZINGER",style: TextStyle(color: Colors.black,fontSize: 18),),
                  Text("Spicy & crispy with garlic"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("49.99 EGP",style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 18
                      ),),
                      SizedBox(width: 8,),
                      Icon(Icons.star,color: Colors.orange,),
                      Text("4.5"),
                      SizedBox(width: 8,),
                      Icon(Icons.local_fire_department_rounded,color: Colors.orange,),
                      Text("199cal")
                    ],
                  ),
                ],
              ),

              SizedBox(width: 50,),
              Icon(Icons.favorite_sharp,color: Colors.grey,),
              SizedBox(height: 30,)
            ],
          ),

          decoration: BoxDecoration(
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 15.0,
                color: Colors.grey,
              )
            ],

          ),
        ),



      ),
    );
  }
}