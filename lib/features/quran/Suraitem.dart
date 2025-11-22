import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/core/routes_manger/routes_manger.dart';
import 'package:islame/models/SuraModels.dart';

class SuraItem extends StatelessWidget {
  const SuraItem({super.key, required this.suramodel});
  final Suramodel suramodel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.suraDetailis,
            arguments: suramodel);
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(ImageAssets.Surabg),
              Text('${suramodel.index}',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colorsmanger.ofwhite,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(width: 24),
          Column(
            children: [
              Text(
                suramodel.suraNameEn,
                style: TextStyle(
                    color: Colorsmanger.ofwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text('${suramodel.versesNumber} Verses',
                  style: TextStyle(
                      color: Colorsmanger.ofwhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Spacer(flex: 12),
          Text(
            suramodel.suraNameAr,
            style: TextStyle(
                color: Colorsmanger.ofwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
<<<<<<< HEAD
  }
}
=======
  } }
>>>>>>> 245359f9913c0042c3ee34d74a391a8628421bc6
