import 'package:flutter/material.dart';
import 'package:islamiapp/islamiProvider.dart';
import 'package:islamiapp/islamiTabList.dart';
import 'package:islamiapp/ui/utilities/appIconsAndImages.dart';
import 'package:islamiapp/ui/utilities/appcolors.dart';
import 'package:provider/provider.dart';

class HomeIslami extends StatelessWidget {
  static const String routename = "home";
  const HomeIslami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Selector<ChangeTabProvider, int>(
        selector: (p0, p1) => p1.getTab(),
        builder: (context, value, child) => Scaffold(
          appBar: AppBar(
              title: Text("Islami",
                  style: TextStyle(
                      color: AppColorsIslami.secondIslamiColor, fontSize: 40)),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent),
          body: islamiTabs[value],
          bottomNavigationBar: Theme(
            data: ThemeData(canvasColor: AppColorsIslami.mainIslamiColor),
            child: BottomNavigationBar(
                selectedItemColor: AppColorsIslami.secondIslamiColor,
                iconSize: 40,
                currentIndex: value,
                onTap: (index) {
                  context.read<ChangeTabProvider>().setTab(index);
                },
                items: [
                  const BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(IconsAndImages.quranTabBtmBtn),
                      ),
                      label: "Quran"),
                  const BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage(IconsAndImages.hadeethTabBtmBtn)),
                      label: "Hadeeth"),
                  const BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage(IconsAndImages.sebhaTabBtmBtn)),
                      label: "Sebha"),
                  const BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage(IconsAndImages.radioTabBtmBtn)),
                      label: "Radio"),
                ]),
          ),
        ),
      ),
    );
  }
}
