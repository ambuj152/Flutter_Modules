import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  var emailText=TextEditingController();
  var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFirstFlutterCode'),
      ),
      body: Center(
        child:Container(width:300,
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[Text("Login Form Using Flutter"),Container(height:20),
                            TextField(
                            controller:emailText,  
                            decoration:InputDecoration(
                              border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(11),
                              borderSide:BorderSide(
                              color: Colors.black,width:2) 
                              ),
                              focusedBorder:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(11),
                              borderSide:BorderSide(
                              color: Colors.blueAccent,width:2) 
                              ),
                              labelText: 'Username',
                             
                            ))
                          
                        ,Container(height:11,),
                          
                            TextField(
                              controller:passText,
                              obscureText: true,
                              decoration:InputDecoration(
                              
                              border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(11),
                              borderSide:BorderSide(
                              color: Colors.black,width:2) 
                              ),
                              focusedBorder:OutlineInputBorder(
                                
                              borderRadius:BorderRadius.circular(11),
                              borderSide:BorderSide(
                              color: Colors.blueAccent,width:2) 
                              ),
                                                          
                              labelText: 'Password',
                              suffixIcon:IconButton(
                                icon:Icon(Icons.remove_red_eye,color:Colors.red),
                                onPressed:(){
                                  //Add you Logic                                  
                                }
                               )
                              ) 
                             ),
                               Container(height:11),
                               ElevatedButton(
                               child:Text("Login",style:TextStyle(color:Colors.white),),
                                  onPressed:()
                                   {
                                     String uEmail = emailText.text.toString();
                                     String uPass= passText.text.toString();
                                     print("Email:$uEmail, Pass:$uPass");    //Add ypu Logic
                                    }, style: ElevatedButton.styleFrom(
                                       primary: Colors.blue,),)
                                   ]
                          
                          )        
                         )
                        )
                       );
                      }
                     }
