import 'package:ecommerceapp/components/bottom_nav_bar.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(

                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

         Column(children: [   
          
            DrawerHeader(
              child: Image.asset(
                'lib/images/nike.png',

                //  color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),


            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home, 
              ),
                title: Text("Home",
                
                ),
              ),
            ),



            const Padding(
              padding: EdgeInsets.only(

                 left: 25,
                 
                //  bottom: 50,

                 ),
              child: ListTile(
                leading: Icon(Icons.info, 
              ),
                title: Text("About",
                
                ),
              ),
            ),
         ],),







            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, 
              ),
                title: Text("Logout",
                
                ),
              ),
            ),



          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
