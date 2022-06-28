import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Myhomepage'),
        centerTitle: true,
      ), 
      body: Center( child:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/log.png'),
              const Text('MyHomePage'),
           ],
        ),
      ),
      ),  
    );
  }
}