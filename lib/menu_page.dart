import 'package:flutter/material.dart';
import 'package:food_app/main.dart';
import 'package:food_app/main_page.dart';
import 'package:food_app/widgets/product_container.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          Row(
          children: [
          SizedBox(height: 15),
          ],
        ),
        Container(
          width: 350,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 15.0,
                color: Colors.grey,
              )
            ],
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/restaurant.jpg",
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 15.0,
                color: Colors.grey,
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Arabiata restaurant',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.location_pin,
                    color: Colors.yellow,
                  ),
                  Text('Ohio City'),
                  SizedBox(
                    width: 3,
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('4.5'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.timer_sharp),
                  Text('30 mins'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '23 miles away',
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 15),
            Text(
              'Menu',
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            FloatingActionButton(
            onPressed: (){},
               shape: BeveledRectangleBorder(
                   borderRadius: BorderRadius.zero
                ),
              backgroundColor: Colors.white,
              child: Text('Pasta',style: TextStyle(
                  color: Colors.black
              ),),
              ),
              FloatingActionButton(
                onPressed: (){},
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                backgroundColor: Colors.white,
                child: Text('Soup',style: TextStyle(
                    color: Colors.black
                ),),
              ),
              FloatingActionButton(
                onPressed: (){},
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                backgroundColor: Colors.white,
                child: Text('Burger',style: TextStyle(
                    color: Colors.black
                ),),
              ),
              FloatingActionButton(
                onPressed: (){},
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                backgroundColor: Colors.white,
                child: Text('Pizza',style: TextStyle(
                  color: Colors.black
                ),),
              ),
    ],
    ),
              Column(
                children: [
                  SizedBox(height: 5,),
                  ProductContainer(),
                  SizedBox(height: 5,),
                  ProductContainer(),
                  SizedBox(height: 5,),
                  ProductContainer(),
                  SizedBox(height: 5,),
                  ProductContainer(),
                ],
              )

    ],
    ),
    ),
    );
  }
}
