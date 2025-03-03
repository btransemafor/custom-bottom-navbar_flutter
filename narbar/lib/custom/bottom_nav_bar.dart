import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

   final List<Widget> pages = const [
    Center(child: Text('Home', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 222, 14, 14)))),
    Center(child: Text('Search', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 237, 23, 23)))),
    Center(child: Text('Cart', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 222, 13, 13)))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 229, 15, 15)))),
  ];
  int selectedTab = 0;
  // List Item Navigation Bar
  final List<Map<String, dynamic>> navItems = [
    {'icon': Icons.home_outlined, 'indexTab': 0},
    {'icon': Icons.search_outlined, 'indexTab': 1},
    {'icon': Icons.shopping_cart_outlined, 'indexTab': 2},
    {'icon': Icons.person_2_outlined, 'indexTab': 3},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      pages[selectedTab], 
      bottomNavigationBar: SafeArea(

          child: Container(
            margin: EdgeInsets.all(10),
             padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 244, 17).withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
               boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0, 10),
                blurRadius: 10,
              )
            ],
              ),
              child: Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(navItems.length, (index) {
                  // get tung item
                  final item = navItems[index];
                  final isSelected = item['indexTab'] == selectedTab;
                
                  return GestureDetector(
                      onTap: () => {
                            setState(() {
                              selectedTab = item['indexTab'];
                            })
                          },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          border: isSelected ? Border(
                            top: BorderSide(
                              color: const Color.fromARGB(255, 234, 18, 3), // Màu viền trên
                              width: 3.0, // Độ dày của viền
                            ),
                          ) : null,
                        ),
                        child: Icon(item['icon'], color:Colors.red,
                        
                        size: isSelected ? 35 : 30),
                      ));
                })),
              ))),
    );
    // TODO: implement build
  }
}
