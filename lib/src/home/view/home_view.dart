import 'package:contest_1/src/app/widgets/app_drawer.dart';
import 'package:contest_1/src/messages/view/messages_view.dart';
import 'package:contest_1/src/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(drawer: AppDrawer(), body: _BottomNav());
  }
}

class _BottomNav extends StatefulWidget {
  const _BottomNav({Key? key}) : super(key: key);

  @override
  State<_BottomNav> createState() => __BottomNavState();
}

class __BottomNavState extends State<_BottomNav> {
  late final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      const Center(
        child: Text('Home'),
      ),
      const Center(
        child: Text('Jobs'),
      ),
      const Center(
        child: Text('Contractors'),
      ),
      const MessagesView(),
      const ProfileView()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.work),
        title: 'Jobs',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.content_paste_search_outlined),
        title: 'Contractors',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.message_rounded),
        title: 'Messages',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'Profile',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
