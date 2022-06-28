import 'package:flutter/material.dart';
import 'package:mylogin/login.dart';
import 'package:mylogin/register.dart';
import 'package:mylogin/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Splash()
    // initialRoute: 'login',
    // routes: {
      // 'login':(context) => const Login(),
      // 'register':(context) => const MyRegister(),

    
    // },

  )
  );
  
}