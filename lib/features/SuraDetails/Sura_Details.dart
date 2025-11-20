import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/core/resources/ColorsManger.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/features/SuraDetails/verseitem.dart';
import 'package:islame/models/SuraModels.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  late Suramodel suraargguments;
  String Suracontent = '';
  List<String> verses = [];
  @override
  @override
  void didChangeDependencies() {
    suraargguments = ModalRoute.of(context)!.settings.arguments as Suramodel;
    loadsuraContent(suraargguments.index);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsmanger.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colorsmanger.black,
        title: Text(
          suraargguments.suraNameEn,
          style: TextStyle(
              color: Colorsmanger.gold,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImageAssets.suradetailspatternleft),
              Text(
                suraargguments.suraNameAr,
                style: TextStyle(
                    color: Colorsmanger.gold,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(ImageAssets.suradetailspatternright)
            ],
          ),
          Expanded(
              child: verses.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colorsmanger.gold,
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return verseItem(verseText: verses[index]);
                      },
                      itemCount: verses.length))
        ],
      ),
    );
  }

  void loadsuraContent(String index) async {
    String filepath = 'assets/files/Suras/$index.txt';
    String fileContent = await rootBundle.loadString(filepath);
    List<String> suralines = fileContent.trim().split('\n');
    for (int i = 0; i < suralines.length; i++) {
      suralines[i] += "[${i + 1}]";
    }

    Suracontent = suralines.join();
    Future.delayed(Duration(seconds: 1));

    setState(() {
      verses = suralines;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
