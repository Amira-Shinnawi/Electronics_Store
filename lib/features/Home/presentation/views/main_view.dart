import 'package:electronics_store/constants.dart';
import 'package:electronics_store/features/Account/presentation/views/edit_profile_view.dart';
import 'package:electronics_store/features/Card/presentation/views/search_category_view.dart';
import 'package:electronics_store/features/Home/presentation/views/card_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_view.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int currentIndex = 0;

  List<Widget> screens = const [
    HomeView(),
    SearchCategoryView(),
    CardView(),
    EditProfile()
  ];

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: kBlueColor,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.shifting,
            onTap: _onItemTap,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                backgroundColor: Color(0xFFE7E7E7),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 25,
                ),
                backgroundColor: Color(0xFFE7E7E7),
              ),
              BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(
                  FontAwesomeIcons.cartShopping,
                  size: 30,
                ),
                backgroundColor: Color(0xFFE7E7E7),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 30,
                ),
                backgroundColor: Color(0xFFE7E7E7),
              ),
            ]),
      ),
      body: screens.elementAt(currentIndex),
    );
  }
}
