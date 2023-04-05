import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_f/home/restnt.dart';
import 'package:flutter/material.dart';
import 'package:try_f/models/user_cubit.dart';
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
      backgroundColor: Color.fromARGB(255, 241, 236, 220),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
            child: Container(
            width: 200,

            child:Text(
              "Welcome",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff4c505b),
                fontSize: 48
            ),
            )
            ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:100,bottom: 0),
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
                  left: 15.0, right: 15.0, top: 15, bottom: 20),
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

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.green.shade200, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(

                onPressed: () async {
                  var authRes=await userAuth(emailController.text,passwordController.text);
                  if (authRes.runtimeType==String){
                    showDialog(context: context, builder: (context){
                      return Dialog(
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 250,
                          decoration: BoxDecoration(),
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
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),

          SizedBox(
            height: 40,
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
                      decoration: TextDecoration.underline,
                      color: Color(0xff4c505b),
                      fontSize: 18
                    ),
                    ),
                  style: ButtonStyle(),
                ),
                TextButton(onPressed: (){},
                  child: Text("Forgot Password?",

                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff4c505b),
                        fontSize: 18
                    ),
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