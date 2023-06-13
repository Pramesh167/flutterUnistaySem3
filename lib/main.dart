import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hostel/Screen/SignUp.dart';
import 'package:hostel/Screen/Verify.dart';


// import 'Screen/DashBoardScreen.dart';
// import 'Screen/ForgetScreen.dart';
// import 'Screen/LoginScreen.dart';
import 'Screen/RegisterScreen.dart';
import 'Screen/BurgerMenu.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/input",
      routes: {
        // "/login": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        // "/verify":(context)=>Verify(),
        "/input":(context)=> BurgerMenu(),
        // "/forget-password": (context) => ForgetScreen(),
        // "/dashboard": (context) => DashBoardScreen(),
      },
    );
  }
}