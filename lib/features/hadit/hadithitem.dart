import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/models/hadithmodel.dart';

// ignore: camel_case_types
class Hadit_item extends StatefulWidget {
  const Hadit_item({super.key, required this.index});
  final int index;

  @override
  State<Hadit_item> createState() => _Hadit_itemState();
}

class _Hadit_itemState extends State<Hadit_item> {
  Hadithmodel? hadithmodel;
  @override
  void initState() {
    loadhadithContent(widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              ImageAssets.hadithbackgroundcard,
            ),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colorsmanger.gold.withOpacity(0.2), BlendMode.dstATop)),
        borderRadius: BorderRadius.circular(20),
        color: Colorsmanger.gold,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageAssets.suradetailspatternleft,
                    color: Colorsmanger.black,
                  ),
                  Image.asset(
                    ImageAssets.suradetailspatternright,
                    color: Colorsmanger.black,
                  )
                ],
              ),
              Text(
                hadithmodel?.title ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colorsmanger.black,
                ),
              ),
            ],
          ),
          Expanded(
            child: hadithmodel == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Text(
                      hadithmodel?.content ?? '',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colorsmanger.black,
                      ),
                    ),
                  ),
          ),
          Image.asset(ImageAssets.hadithbackgroundcardbottom)
        ],
      ),
    );
  }

  void loadhadithContent(int index) async {
    String filepath = 'assets/files/Hadeeth/h${index}.txt';
    String hadithcontent = await rootBundle.loadString(filepath);
    List<String> hadithlines = hadithcontent.trim().split('\n');
    String title = hadithlines[0];
    hadithlines.removeAt(0);
    String content = hadithlines.join();
    hadithmodel = Hadithmodel(title: title, content: content);

    setState(() {});
  }
}
