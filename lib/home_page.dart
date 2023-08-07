import 'package:flutter/material.dart';

import 'Model.dart';
import 'Services/recipy_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    RecipyServices recipyServices = RecipyServices();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff213A50),
                  Color(0xff071938)
                ],
              )
            ),
          ),
          Column(
            children: [
              SafeArea(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24)
              ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        if((searchController.text).replaceAll(" "," ")==" "){
                          print('Blank search');
                        }
                        else {
                          recipyServices.getRecipy(searchController.text.toString());

                        }
                      },
                      child: Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                        ),
                        margin: EdgeInsets.fromLTRB(3, 0,7,0),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for Recipy',
                        ),

                    ),),
                  ],
                ),

              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
