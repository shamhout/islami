import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/features/hadit/hadit_tab.dart';
import 'package:islame/features/quran/quran_tab.dart';
import 'package:islame/features/radio/radio_tab.dart';
import 'package:islame/features/tasbeh/tasbeh_tab.dart';
import 'package:islame/features/time/time_tab.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      quran(),
      hadith_tab(),
      tasbeh_tab(),
      radio_tab(),
      time()
    ];
    return Scaffold(
        body: tabs[selecteditem],
        backgroundColor: Colorsmanger.black,
        bottomNavigationBar: bottomNavigationBar());
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: selecteditem,
      onTap: _ontap,
      selectedItemColor: Colorsmanger.white,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colorsmanger.gold,
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(
              icon: IconAssets.quranIc, isSelected: selecteditem == 0),
          label: 'Quran',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              icon: IconAssets.hadithIc, isSelected: selecteditem == 1),
          label: 'Hadith',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              icon: IconAssets.sebhaIc, isSelected: selecteditem == 2),
          label: 'Sebha',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              icon: IconAssets.radioIc, isSelected: selecteditem == 3),
          label: 'Radio',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(
              icon: IconAssets.hadithIc, isSelected: selecteditem == 4),
          label: 'Time',
        ),
      ],
    );
  }

  Widget _buildIcon({required String icon, required bool isSelected}) {
    return isSelected
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colorsmanger.black.withOpacity(0.6),
            ),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            child: ImageIcon(AssetImage(icon)))
        : ImageIcon(AssetImage(icon));
  }

  void _ontap(int newindex) {
    setState(() {
      selecteditem = newindex;
    });
  }
}
