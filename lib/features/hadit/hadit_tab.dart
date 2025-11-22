<<<<<<< HEAD
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islame/core/resources/assets_manger.dart';
import 'package:islame/features/hadit/hadithitem.dart';
=======
import 'package:flutter/material.dart';
>>>>>>> 245359f9913c0042c3ee34d74a391a8628421bc6

class hadith_tab extends StatelessWidget {
  const hadith_tab({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    List.generate(50, (index) => index);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageAssets.hadithtabbackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            ImageAssets.qurantablogo,
          ),
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                  // autoPlayAnimationDuration: Duration(seconds: 3),
                  // autoPlay: true,
                  viewportFraction: 0.8,
                  height: double.infinity,
                  enlargeFactor: 0.2,
                  enlargeCenterPage: true),
              items: List.generate(50, (index) => index + 1).map((i) {
                return Hadit_item(
                  index: i,
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
//async*  {
=======
    return const Placeholder();
  }
}
>>>>>>> 245359f9913c0042c3ee34d74a391a8628421bc6
