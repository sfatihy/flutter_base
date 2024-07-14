import 'package:flutter/material.dart';

import '../home/home_view.dart';
import '../profile/profile_view.dart';

import '../../product/constants/icon_constants.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {

  int _bottomIndex  = 0;

  final List<Widget> _bodies = [const HomeView(), const Scaffold(), const ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomIndex,
        children: _bodies
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomIndex,
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconConstants.home),
            activeIcon: Icon(IconConstants.home),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(IconConstants.explore),
            activeIcon: Icon(IconConstants.explore),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(IconConstants.user),
            activeIcon: Icon(IconConstants.user),
            label: ""
          ),
        ],
      ),
    );
  }
}