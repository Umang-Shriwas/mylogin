import 'package:flutter/material.dart';
import 'package:mylogin/home.dart';
import 'package:mylogin/register.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top:130),
              child: Text('Welcome\nBack',style: TextStyle(
                color: Colors.white,
                fontSize: 33
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 35,left: 35),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) => EmailValidator.validate(value!)
                            ? null
                            : "Please enter valid mail",
                        controller: _emailController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                            
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _passwordController,
                          validator: (value) =>
                              value!.isEmpty ? "Enter some text" : null,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                            
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign in',style:TextStyle(fontSize: 27,fontWeight: FontWeight.w700)),
                          FloatingActionButton(
                            child: const Icon(Icons.arrow_forward),
                            backgroundColor: Colors.blue,
                            onPressed:() {
                              if(_formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder:(context) => MyHomePage(),));}
                              
                            }),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context) => MyRegister(),));
                            }, 
                          child: Text('sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                          )
                          ),
                          TextButton(onPressed: (){}, 
                          child: Text('forget password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                          )
                          ),
                        ],
                
                      ),
                    ],
                  ),
                ),
            
              ),
            )
          ],
        ),
      ),
    );

    
  }
}