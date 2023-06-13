import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _phoneController= TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  // TextEditingController _confirmPasswordController = TextEditingController();
  //
  // bool _obscureTextPassword = true;
  // bool _obscureTextPasswordConfirm = true;

  // String _uid = "";
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();


  // void register() async {
  //   try {
  //     if (_formKey.currentState!.validate()) {
  //       final user=await _auth.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
  //       // Form validation passed, show success Snackbar
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registered!")));
  //       // _scaffoldMessengerKey.currentState!.showSnackBar(
  //       //   SnackBar(
  //       //     content: Text('Registered'),
  //       //   ),
  //       // );
  //
  //       //
  //     };
  //   } on FirebaseAuthException catch (err) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(err.message.toString()),
  //       backgroundColor: Colors.red,
  //     ));
  //   }
  // }


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Colors.deepOrangeAccent.shade100,
                  Colors.orange.shade300,
                  Colors.orange.shade200,
                  Colors.orange.shade100,
                ]),
              ),

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  SizedBox(height:80),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "EMAIL VERIFICATION",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(height:648,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(height: 500),
                          Container(
                            width:double.infinity,
                            child: ElevatedButton(

                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade300),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),

                                        side: BorderSide(color: Colors.orange.shade300),
                                      )
                                  ),
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20)),
                                ),
                                onPressed: (){
                                  // register();
                                }, child: Text("VERIFY", style: TextStyle(
                                fontSize: 20
                            ),)),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}