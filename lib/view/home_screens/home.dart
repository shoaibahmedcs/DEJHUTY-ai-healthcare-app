import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getx_mvvm/view/home_screens/chat.dart';
import 'package:getx_mvvm/view/home_screens/doctor.dart';
import 'package:getx_mvvm/view/home_screens/profile_screen.dart';
import 'package:getx_mvvm/view/home_screens/tasks_screen.dart';
import 'package:getx_mvvm/view/home_screens/initial_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Add GlobalKey
  int _selectedIndex = -1; // Start with -1 to indicate no selection
  bool _isSearchOpen = false; // Flag to control search visibility
  final TextEditingController _searchController = TextEditingController(); // Search field controller

  final List<Widget> _screens = [
    DoctorsScreen(),
    ChatsScreen(),
    TaskScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.7, // 50% of screen height
      ),
      // constraints: BoxConstraints(
      //   // minHeight: MediaQuery.of(context).size.height * 0.7, // 50% of screen height
      // ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          // color: Color(0xff3A9864),
          padding: const EdgeInsets.all(40.0),
          decoration: const BoxDecoration(
            color: Color(0xff3A9864),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('assets/images/bottomsheetsteth.png'),
              // fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [Colors.white, Color(0xff3A9864)],
                    center: Alignment.center,
                    radius: 0.6,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: const Icon(Icons.mic, color: Color(0xff3A9864), size: 80),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  'Comprehensive Abstract for care providers to outline a more comprehensive treatment plan by connecting patients to community partners and other relevant services; which will include movement, gut health and mindfulness.',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showNotificationDropdown() {
    final RenderBox appBarBox = context.findRenderObject() as RenderBox;
    final Offset appBarPosition = appBarBox.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      color: Color(0xff3A9864),

      position: RelativeRect.fromLTRB(
        appBarPosition.dx,
        appBarPosition.dy + kToolbarHeight,
        appBarPosition.dx + 30, // Width of the dropdown menu
        appBarPosition.dy + 400, // Height of the dropdown menu
      ),
      items: [
        PopupMenuItem(
          child: Column(
            children: const [
              Text(
                'Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey, // Assign the key to Scaffold
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer(); // Use GlobalKey to open the drawer
            },
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xff3A9864),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff3A9864),
                ),
                child: const Icon(Icons.menu, color: Colors.white),
              ),
            ),
          ),
          title: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _isSearchOpen ? MediaQuery.of(context).size.width * 0.7 : 0,
            child: _isSearchOpen
                ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSearchOpen = !_isSearchOpen; // Toggle search bar
                      });
                    },
                    icon: Icon(
                      Icons.close,
                      size: 30,
                      color: const Color(0xffffffff),
                    ),
                  ),
                  fillColor: Color(0xff3A9864),
                  filled: true,
                ),
              ),
            )
                : null,
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isSearchOpen = !_isSearchOpen; // Toggle search bar
                });
              },
              icon: Icon(
                _isSearchOpen ? null : Icons.search,
                size: 30,
                color: const Color(0xff3A9864),
              ),
            ),
            IconButton(
              onPressed: _showNotificationDropdown,
              icon: const Icon(Icons.notifications, size: 30, color: Color(0xff3A9864)),
            ),
          ],
        ),
        body: _selectedIndex == -1 ? const InitialScreen() : _screens[_selectedIndex],
        floatingActionButton: ClipOval(
          child: GestureDetector(
            onTap: _openBottomSheet, // Call the bottom sheet
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.white, Color(0xff3A9864)],
                  center: Alignment.center,
                  radius: 0.6,
                ),

              ),
              child: const Icon(Icons.mic, color: Color(0xff3A9864), size: 40),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios, color: Color(0xff3A9864), size: 30)),
                  const Text(
                    'Back',
                    style: TextStyle(
                      color: Color(0xff3A9864),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/splash.png', height: 100, width: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Community Health Organization',
                    style: TextStyle(
                      color: Color(0xff175232),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'Chat History',
                  style: TextStyle(
                    color: Color(0xff175232),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Navigator.pop(context);
                },
                leading: const Icon(Icons.list_alt, color: Color(0xff175232)),
              ),
              // const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'Update Form',
                  style: TextStyle(
                    color: Color(0xff175232),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Navigator.pop(context);
                },
                leading: const Icon(Icons.note_alt_outlined, color: Color(0xff175232)),
              ),
    // const SizedBox(height: 20),
    ListTile(
    title: const Text(
    'About Us',
    style: TextStyle(
    color: Color(0xff175232),
    fontSize: 15,
    fontWeight: FontWeight.bold,
    ),
    ),
    onTap: () {
    // Navigator.pop(context);
    },
    leading: const Icon(Icons.info_outline, color: Color(0xff175232)),
    ),
    // const SizedBox(height: 20),
    ListTile(
    title: const Text(
    'Settings',
    style: TextStyle(
    color: Color(0xff175232),
    fontSize: 15,
    fontWeight: FontWeight.bold,
    ),
    ),
    onTap: () {
    // Navigator.pop(context);
    },
    leading: const Icon(Icons.settings, color: Color(0xff175232)),
    ),
    // const SizedBox(height: 20),
    ListTile(
    title: const Text(
    'Help and Support',
    style: TextStyle(
    color: Color(0xff175232),
    fontSize: 15,
    fontWeight: FontWeight.bold,
    ),
    ),
    onTap: () {
    // Navigator.pop(context);
    },
    leading: const Icon(Icons.question_mark, color: Color(0xff175232)),
    ),
              // const SizedBox(height: 20),
              ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xff175232),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Navigator.pop(context);
                },
                leading: const Icon(Icons.login_outlined, color: Color(0xff175232)),
              ),
              // ... Additional ListTiles
            ],
          ),
        ),
        // Modified BottomNavigationBar inside a styled Container
        bottomNavigationBar: Container(
          height: 70,
          margin: const EdgeInsets.only(left: 5,right: 5, bottom: 5),
          decoration: BoxDecoration(
            color: const Color(0xff3A9864), // Background color of the container
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow effect
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // Shadow position
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: BottomAppBar(
              color: const Color(0xff3A9864),
              shape: const CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  buildNavItem('assets/images/doctor_icon.svg', 0),
                  buildNavItem('assets/images/chat_icon.svg', 1),
                  const SizedBox(width: 40), // Space for the FAB
                  buildNavItem('assets/images/task_icon.svg', 2),
                  buildNavItem('assets/images/profile_icon.svg', 3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget buildNavItem(String icon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index
              ? Colors.white.withOpacity(0.4)
              : Colors.transparent,
        ),
        // child: Image.asset(icon, height: 30, width: 30),
        child: Center(child: SvgPicture.asset(icon, height: 30, width: 30)),
      ),
    );
  }
}
























