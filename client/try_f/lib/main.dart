import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_f/home/restnt.dart';
import 'package:try_f/models/user_cubit.dart';
import 'package:try_f/pages/login.dart';
import 'package:try_f/pages/signup.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'initial_screens/splash.dart';
import 'models/user_models.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: BlocProvider(
        create: (context)=>UserCubit(User(),),
          child:SplashScreen()),
    );
  }
}