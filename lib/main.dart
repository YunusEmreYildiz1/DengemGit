import 'package:flutter/material.dart';
import 'package:untitled6/ana_sayfa.dart';
import 'package:untitled6/tumunu_gor_gorevler.dart';
import 'package:untitled6/introduction.dart';
import 'package:untitled6/loadingscreen.dart';
import 'package:untitled6/breathe.dart';
import 'package:untitled6/profil_sayfa.dart';
import 'package:untitled6/info.dart';
import 'package:untitled6/info2.dart';

void main() {
  runApp(MaterialApp(
    home: Info("Sosyal Anksiyete Nedir?", "Sosyal fobi olarak da bilinir. Bireyin başkaları tarafından yargılanma kaygısını taşıdığı toplumsal ortamlarda mahcup ya da rezil olacağı konusunda belirgin ve sürekli korkusunun olduğu bir kaygı bozukluğudur.", "assets/images/anskeyete.png"),
  ));
}

class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profil(),
    );
  }

}
