import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:Text('Recipy APP', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30, color: Colors.orange),)

      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  
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

