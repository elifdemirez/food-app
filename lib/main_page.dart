import 'package:flutter/material.dart';
import 'package:food_app/main.dart';
import 'package:food_app/widgets/category_container.dart';
import 'package:food_app/menu_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(Icons.location_on_outlined,
              color:Colors.grey ,size: 30,),
        actions: [
          SizedBox(
            width: 50,
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.notifications_none_sharp),
              backgroundColor: Colors.yellow,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: Container(
                color: Colors.white ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Shakil!",style: TextStyle(
                        fontSize: 25
                    ),),
                    SizedBox(height: 5,),
                    Text("Find your favourite dish",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    ),),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
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
                              width: 200,
                              height: 30,
                              child:Center(
                                  child: Text("Search for your address"),

                              )),

                        ),
                        Container(
                          height: 30,
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
                              width: 50,
                              height: 30,
                              child:Center(
                                child: Icon(Icons.settings_input_component_outlined
                                ,color: Colors.yellow,
                                ),

                              )),

                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",style: TextStyle(fontSize: 20),),
                        Text("See all",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryContainer(),
                        CategoryContainer(),
                        CategoryContainer(),
                        CategoryContainer(),
                      ],
                    )
                  ],
                ),


              ),
            )
          ],
        ),
      ),
    );
  }
}
