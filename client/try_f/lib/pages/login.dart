import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_f/home/restnt.dart';
import 'package:flutter/material.dart';
import 'package:try_f/models/user_cubit.dart';
import 'package:try_f/pages/category.dart';
import 'package:try_f/pages/signup.dart';
import '../api/auth_api.dart';
import '../models/user_models.dart';

TextEditingController? controller;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  void initState(){
    super.initState();
  }
  @override
  void dispose(){
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: Container(
                height: 150,
                alignment: Alignment.topCenter,
                child: (
                    Image.asset('lib/images/leftovergo_bg (1).png',)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:60,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 25, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:20.0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:Color(0XFFefe298),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ) ),
                  onPressed: () async {
                    var authRes=await userAuth(emailController.text,passwordController.text);
                    if (authRes.runtimeType==String){
                      showDialog(context: context, builder: (context){
                        return Dialog(
                          child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 250,
                            decoration: BoxDecoration(

                            ),
                            child: Text(
                              authRes,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),),),
                        );
                      },);
                    }
                    else if(authRes.runtimeType==User){
                      User user=authRes;
                      //context.read<UserCubit>.emit(user);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return resnt();
                      }
                      ));
                    }

                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        //fontStyle: ,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ),
              ),
            ),

          SizedBox(
            height: 80,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return RegisterPage();
                  }));
                },
                    child: Text("REGISTER",
                textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  style: ButtonStyle(),
                ),
                TextButton(onPressed: (){},
                  child: Text("Forgot Password?",
                    style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ButtonStyle(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}