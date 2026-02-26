import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget{
  final String name;
  final String email;
  ProfileScreen({required this.name,required this.email});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $name',style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Email: $email',style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold),),

          ],
          ),
      ),
    );
  }
}