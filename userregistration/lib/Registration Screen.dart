import 'package:flutter/material.dart';
import 'package:userregistration/ProfileScreen.dart';

class RegistrationScreen extends StatefulWidget{
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();

}
class _RegistrationScreenState extends State <RegistrationScreen>{
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Screen'),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key:_formkey,
          child: Column(children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "full Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your full name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
              validator: (value) {
                if(value==null || !value.contains('@')) return "Enter a valid email";
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              validator: (value) {
                if(value==null || value.length<6) return "Password must be at least 6 characters";
                return null;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if(_formkey.currentState!.validate()){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => ProfileScreen(
                    name: _nameController.text,
                    email: _emailController.text,
                   )));
                }
              },
              child: Text("Register"),
            ),
          ],),
        ),
      ),
    );
  }
  }