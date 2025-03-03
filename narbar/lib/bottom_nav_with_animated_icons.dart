import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color bottomNavBgColor = Color(0xFF17203A);

class BottomNavWithAnimatedIcons extends StatefulWidget {
  const BottomNavWithAnimatedIcons({Key? key}) : super(key: key);

  @override
  State<BottomNavWithAnimatedIcons> createState() =>
      _BottomNavWithAnimatedIconsState();
}

class _BottomNavWithAnimatedIconsState
    extends State<BottomNavWithAnimatedIcons> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    Center(child: Text('Home', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 222, 14, 14)))),
    Center(child: Text('Search', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 237, 23, 23)))),
    Center(child: Text('Cart', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 222, 13, 13)))),
    Center(child: Text('Notifications', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 212, 17, 17)))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 229, 15, 15)))),
  ];

  final List<Map<String, dynamic>> navItems = [
    {"icon": Icons.home_outlined, "index": 0},
    {"icon": Icons.search_outlined, "index": 1},
    {"icon": Icons.card_travel, "index": 2},
    {"icon": Icons.notifications_outlined, "index": 3},
    {"icon": Icons.person_2_outlined, "index": 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 3000),
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 56,

          decoration: BoxDecoration(
            color: bottomNavBgColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: bottomNavBgColor.withOpacity(0.4),
                //offset: const Offset(0, 10),
                //blurRadius: 10,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: 

              List.generate(
                
                navItems.length, 
                (index) {
                  // navItem 
                  final navItem = navItems[index]; 
                  bool isSelected ; 

                  if (selectedIndex == navItem["index"]) {
                    isSelected = true; 

                  }
                  else {
                    isSelected = false; 
                  }

                  //final isSelected = selectedIndex == navItem["index"];

                return GestureDetector(
                  onTap: () => {
                    setState(() {
                      //isSelected = navItem['index'] ; 
                      selectedIndex = navItem['index'] ; 
                    })
                  },
                  child: 

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent, 

                      borderRadius: BorderRadius.circular(15) , 
                    ),
                    child: 
                    
                    Icon(
                    navItem['icon'], 
                    color: Colors.white, 
                    size: isSelected ? 32 : 30 
                    )  

                  ), 

                ); 

                }
              
              
              
              )
            
             


          ),


        ),
      ),
    );
  }
}
