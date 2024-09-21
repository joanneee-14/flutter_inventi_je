import 'dart:convert';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body:
          // Expanded(
          //   child:
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            child:
            ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                  child: Container(
                      width: 200,
                      height: 100,
                        child:Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                TextFormField(
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ), // icon is 48px widget.
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      hintText: 'henry@gmail.com')
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                    style: TextStyle(color: Colors.grey),
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ), // icon is 48px widget.
                        ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      hintText: '************')

                ),
              ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 180.0,),
              child: Container(
              width: 200,
              height: 100,
                  child:
                  TextButton(
                    onPressed: (){
                      //TODO FORGOT PASSWORD SCREEN GOES HERE
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.right,
                      ),
                  ),
              ),
            ),

            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(0)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
          ),

          Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child:
              Container(
                height: 50,
                width: 300,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      TextButton(
                        onPressed: (){
                         },
                        child:
                          Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                         ),),
                        TextButton(
                          onPressed: (){
                          },
                          child:
                            Text(
                              'Sign Up Here',
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),),
                      ],),),),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child:
                Container(
                  height: 50,
                  width: 300,
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      Text(
                        'POWERED BY',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),

                      Text(
                        'inventi',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],),),),
        ],),),
    );
  }
}

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inventi',
          style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
        icon: Icon(Icons.list, color: Colors.blue),
        onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 250.0, bottom:20, left:20, right:20),
              child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(0)),
                        child:Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom:0, left:10, right:10),
                          child:
                          Container(
                            height: 40,
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                           child:
                           TextButton(
                              onPressed: (){
                            },
                           child: Text(
                              'Quick Button',
                              style: TextStyle(color: Colors.black, fontSize: 10),
                              textAlign: TextAlign.right,
                           ),
                          ),
                        ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child:
                          Container(
                              decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(0)),
                              child:Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 0.0, bottom:10, left:10, right:10),
                                child:
                                  Container(
                                    height: 50,
                                    width:500,
                                    decoration: BoxDecoration(
                                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                    child:
                                    Align(
                                    alignment: Alignment.center,
                                      child:
                                        Column(
                                        children: <Widget>[
                                          Container(
                                            height: 30,
                                            width:40,
                                              child:
                                                IconButton(
                                                  icon: Image.asset('assets/images/tool.png'),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context, MaterialPageRoute(builder: (_) => LoadingPage()));
                                                  },
                                                ),),
                                          Text(
                                             'Click the button to generate new random string',
                                                style: TextStyle(
                                                fontSize: 8,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),

                                    ],),),),),),],),),),
                      ],
                  ),),),],
            ),
      ),
    );
  }
}


class LoadingPage extends StatelessWidget {

  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inventi',
          style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.list, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 250.0, bottom:20, left:20, right:20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(0)),
                child:Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom:0, left:10, right:10),
                    child:
                    Container(
                      height: 40,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                      child:
                      TextButton(
                        onPressed: (){
                        },
                        child: Text(
                          'Quick Button',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child:
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(0)),
                      child:Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, bottom:10, left:10, right:10),
                          child:
                          Container(
                            height: 50,
                            width:500,
                            decoration: BoxDecoration(
                                color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                            child:
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child:
                              Align(
                                alignment: Alignment.center,
                                child:
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width:40,
                                      child:
                                      IconButton(
                                        icon: Image.asset('assets/images/loading.jpg'),
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (_) => LoadingPage()));
                                        },
                                      ),),
                                  ],),),),),),],),),),
                ],
                ),),),],
        ),
      ),
    );
  }
}