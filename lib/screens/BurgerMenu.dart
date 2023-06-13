import 'package:flutter/material.dart';

class BurgerMenu extends StatefulWidget {
  @override
  _BurgerMenuState createState() => _BurgerMenuState();
}

class _BurgerMenuState extends State<BurgerMenu> {
  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the shadow
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: _toggleMenu,
            color: Colors.black,
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Stack(
          key: _formKey,


     children: [
            Container(
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
              // child: Center(
              //   child: Text(
              //     'Main Content',
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget> [
                  SizedBox(height:80),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'WorkSansSemiBold',
                          fontSize: 16.0,
                          color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),

          Container(height:600,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
    )
            ],
              ),
            ),
            Positioned(
              top: 70,
              bottom:380,
              // right: _isMenuOpen ? 0 : -200,
              right: _isMenuOpen ? 0 : -(MediaQuery.of(context).size.width - 56),
              width: 200,
              child: Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Option 1', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle option 1 tap
                        },
                      ),
                      ListTile(
                        title: Text('Option 2', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle option 2 tap
                        },
                      ),
                      ListTile(
                        title: Text('Option 3', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle option 3 tap
                        },
                      ),
                      ListTile(
                        title: Text('Option 4', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle option 4 tap
                        },
                      ),
                      ListTile(
                        title: Text('Option 5', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          // Handle option 5 tap
                        },
                      ),
                    ],

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

