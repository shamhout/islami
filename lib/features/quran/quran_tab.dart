import 'package:flutter/material.dart';
import 'package:islame/core/extentions/context_extentions.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/features/quran/Suraitem.dart';
import 'package:islame/features/quran/mostrecentitem.dart';
import 'package:islame/models/SuraModels.dart';

class quran extends StatefulWidget {
  const quran({super.key});

  @override
  State<quran> createState() => _quranState();
}

class _quranState extends State<quran> {
  List<Suramodel> FilterdSuras = Suramodel.allSuras;
  @override
  Widget build(BuildContext context) {
    context.gethight;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                ImageAssets.qurantabbackground,
              ))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(ImageAssets.qurantablogo),
            const SizedBox(
              height: 21,
            ),
            TextField(
              onChanged: (input) => {filterSuresListBySearchKey(input)},
              cursorColor: Colorsmanger.white,
              style: TextStyle(
                  color: Colorsmanger.white, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                labelText: 'Soura Name',
                labelStyle: const TextStyle(
                  color: Colorsmanger.ofwhite,
                ),
                prefixIcon: ImageIcon(
                  AssetImage(
                    IconAssets.quranIc,
                  ),
                  color: Colorsmanger.gold,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colorsmanger.gold),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colorsmanger.gold),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Most Recently',
                  style: TextStyle(),
                )),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most Recently',
                style: TextStyle(
                    fontSize: 16,
                    color: Colorsmanger.ofwhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 8,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, Index) => MostRecent(),
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Soura list',
                style: TextStyle(
                    fontSize: 16,
                    color: Colorsmanger.ofwhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => Divider(
                indent: 20,
                endIndent: 20,
                color: Colorsmanger.white,
                thickness: 2,
              ),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, Index) =>
                  SuraItem(suramodel: FilterdSuras[Index]),
              itemCount: FilterdSuras.length,
            ),
          ],
        ),
      ),
    );
  }

  filterSuresListBySearchKey(String searchKey) {
    FilterdSuras = Suramodel.allSuras
        .where((sura) =>
            sura.suraNameEn.toLowerCase().contains(searchKey.toLowerCase()) ||
            sura.suraNameAr.contains(searchKey))
        .toList();
    setState(() {});
  }
}
