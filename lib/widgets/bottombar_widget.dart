import 'package:flutter/material.dart';
import 'package:technical_loanmarket/ui/bank_page.dart';
import 'package:technical_loanmarket/ui/contact_page.dart';
import 'package:technical_loanmarket/ui/home_page.dart';
import 'package:technical_loanmarket/ui/loan_page.dart';
import 'package:technical_loanmarket/ui/product_page.dart';
import 'package:technical_loanmarket/utils/theme.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {

  // declare variable for index
  int _selectedIndex = 0;

  // create a function to update the selected index with new index
  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // list of screen
  final List<Widget> _widgetOption = [
    const HomePage(),
    const ContactPage(),
    const LoanPage(),
    const ProductPage(),
    const BankPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/icon_home_inactive.png",
                height: 30,
                color: blackColor,
              ),
              label: "Home",
              activeIcon: Image.asset(
                "assets/images/icon_home_active.png",
                height: 30,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/icon_contact_inactive.png",
                height: 30,
              ),
              label: "Contact",
              activeIcon: Image.asset(
                "assets/images/icon_contact_active.png",
                height: 30,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/icon_loan_inactive.png",
                height: 30,
              ),
              label: "Loan",
              activeIcon: Image.asset(
                "assets/images/icon_loan_inactive.png",
                height: 30,
                color: primaryColor,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/icon_product_inactive.png",
                height: 30,
              ),
              label: "Product",
              activeIcon: Image.asset(
                "assets/images/icon_product_active.png",
                height: 30,
              )),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/icon_bank_inactive.png",
                height: 30,
              ),
              label: "Bank",
              activeIcon: Image.asset(
                "assets/images/icon_bank_inactive.png",
                height: 30,
                color: primaryColor,
              )),
        ],

        currentIndex: _selectedIndex,

        // everytime bottombar get tapped, the index will be change following the index of the bottomnavbar
        onTap: _onTapItem,
        selectedItemColor: primaryColor,
        unselectedItemColor: blackColor,
        showUnselectedLabels: true,
      ),

      // show the screen
      body: _widgetOption.elementAt(_selectedIndex),
    );
  }
}
