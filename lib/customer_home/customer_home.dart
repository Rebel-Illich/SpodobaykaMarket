import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sellers_app/customer_home/home.dart';
import 'package:sellers_app/main_screens/category_screens.dart';


class CustomerHomeScreen extends StatefulWidget {
    const CustomerHomeScreen ({Key? key}) : super (key: key);


  @override
  _CustomerHomeScreenState createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen>{
  int _selectedIndex = 0;
  final List<Widget> _tabs = const[
    HomeScreen(),
    CategoryScreen(),
    Center(child: Text('stores screen')),
    Center(child: Text('cart screen')),
    Center(child: Text('profile screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Stores'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}