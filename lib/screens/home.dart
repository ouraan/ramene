import 'package:flutter/material.dart';
import 'package:ramene/constants.dart';
import 'package:ramene/models/ramens.dart';
import 'package:ramene/screens/chat.dart';
import 'package:ramene/screens/elements/drawer_header.dart';
import 'package:ramene/screens/login.dart';
import 'package:ramene/screens/order.dart';
import 'package:ramene/screens/profile.dart';
import 'package:ramene/shared_pref.dart';

class Home extends StatefulWidget {
  // Function setTheme;
  final String name;

  Home({Key? key, required this.name}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    ContainerHome(),
    Chat(),
    Order(),
    Profile(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  var currentPage = DrawerSections.dashboard;

  // bool isDarkmode = SharedPref.pref?.getBool('isDarkmode') ?? false;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = ContainerHome();
    } else if (currentPage == DrawerSections.chat) {
      container = Chat();
    } else if (currentPage == DrawerSections.order) {
      container = Order();
    } else if (currentPage == DrawerSections.profile) {
      container = Profile();
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: orangeAccent,
        actions: [
          // GestureDetector(
          //   child: Icon(
          //     Icons.person,
          //     color: Colors.white,
          //   ),
          //   onTap: () {
          //     final snackBar = SnackBar(
          //         backgroundColor: orangeAccent,
          //         content: Text(
          //           'Hi, ' + widget.name,
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ));
          //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //   },
          // ),
          GestureDetector(
            onTap: () {
              // isDarkmode = !isDarkmode;
              // widget.setTheme(isDarkmode);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                Icons.light_mode,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        selectedItemColor: orangeAccent,
        unselectedItemColor: lightGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Chat", Icons.chat_outlined,
              currentPage == DrawerSections.chat ? true : false),
          menuItem(3, "Order", Icons.shopping_basket_outlined,
              currentPage == DrawerSections.order ? true : false),
          menuItem(4, "Profile", Icons.person_outline,
              currentPage == DrawerSections.profile ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? lightOrange : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.chat;
            } else if (id == 3) {
              currentPage = DrawerSections.order;
            } else if (id == 4) {
              currentPage = DrawerSections.profile;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: darkGrey,
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins Regular',
                    color: darkGrey,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { dashboard, order, chat, profile }

class ContainerHome extends StatelessWidget {
  const ContainerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          TextField(
            controller: null,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search ramen...',
              hintStyle: TextStyle(
                fontFamily: 'Poppins Light',
                color: lightGrey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: lightGrey),
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Top Menu",
              style: TextStyle(
                fontFamily: "Poppins SemiBold",
                fontSize: 17,
                color: darkGrey,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: ramens.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(ramen: ramens[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Ramen ramen;
  const ItemCard({
    Key? key,
    required this.ramen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            // height: 170,
            // width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ramen.image),
                )),
          ),
        ),
        SizedBox(height: 10),
        Text(
          ramen.name,
          style: TextStyle(
            color: lightGrey,
            fontFamily: 'Poppins Light',
          ),
        ),
        SizedBox(height: 2),
        Text(
          ramen.price.toString(),
          style: TextStyle(
            color: darkGrey,
            fontFamily: 'Poppins Regular',
          ),
        ),
      ],
    );
  }
}
