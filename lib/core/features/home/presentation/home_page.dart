import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions:<Widget> [
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.search)),
        ],
        title: Text('HomePage'),backgroundColor: Colors.deepOrange,),
      body: Center(
          child: Text("HomePage")),
    );
  }
}
