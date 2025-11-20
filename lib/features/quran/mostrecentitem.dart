import 'package:flutter/cupertino.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';

class MostRecent extends StatelessWidget {
  const MostRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colorsmanger.gold,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Al-Fatiha',
                style: TextStyle(
                    fontSize: 24,
                    color: Colorsmanger.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'الفاتحة',
                style: TextStyle(
                    fontSize: 24,
                    color: Colorsmanger.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '7 Verses',
                style: TextStyle(
                    fontSize: 14,
                    color: Colorsmanger.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Image.asset(ImageAssets.mostRecentImage)
        ],
      ),
    );
  }
}
