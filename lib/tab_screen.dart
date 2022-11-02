import 'package:flutter/material.dart';
import 'package:taylor/screens/add_customer_screen.dart';
import 'package:taylor/screens/customers_list_screen.dart';
import 'package:taylor/screens/home_screen.dart';
import 'package:taylor/screens/profile_screen.dart';
import 'package:taylor/screens/settings_screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  List<Widget>tabs = const [
   HomeScreen(),
    CustomersListScreen(),
    AddNewCustomer(),
    ProfileScreen(),
    SettingsScreen()
  ];

  int _selectedPageIndex = 0;

  void _getPage (int i){
    setState((){
      _selectedPageIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          // appBar: AppBar(
          //   title: const Text('New Customer'),
          // ),
          body: tabs[_selectedPageIndex],
          bottomNavigationBar: BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            iconSize: 35,
            elevation: 0,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Theme.of(context).primaryColor,
            currentIndex: _selectedPageIndex,
            onTap: _getPage,
            items: const [
              BottomNavigationBarItem(icon: Icon(
                Icons.home_outlined,),
                label: '',
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                Icons.people,),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                Icons.add_box,
                color: Colors.purple,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                Icons.person_outline,),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                Icons.settings,
              ),
              )
            ],
          ),
        ),
    );
   }
}
