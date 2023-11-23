import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:session/screens/account_screen.dart';
import 'package:session/screens/cart_screen.dart';
import 'package:session/screens/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  void _handleIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: pageIndex,
          onTap: _handleIndex,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home")),
            SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: const Text("Cart")),
            SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                title: const Text("Account")),
          ]),
    );
  }
}

List<Widget> pages = [
  const HomeScreen(),
  const CartScreen(),
  const AccountScreen()
];
