import 'package:flutter/material.dart';
import 'package:untitled6/ana_sayfa.dart';
import 'package:untitled6/tumunu_gor_gorevler.dart';
import 'package:untitled6/introduction.dart';
import 'package:untitled6/loadingscreen.dart';
import 'package:untitled6/breathe.dart';
import 'package:untitled6/profil_sayfa.dart';
import 'package:untitled6/info.dart';  // Info sayfasını içe aktarıyoruz
import 'package:untitled6/info2.dart';
import 'package:untitled6/chat_screen.dart';
import 'package:untitled6/list_screen.dart';
import 'classic_music_player.dart';
import 'package:untitled6/classic_music_player.dart';
import 'package:untitled6/classic_music_provider.dart';
import 'package:untitled6/nature_sound_player.dart';
import 'package:untitled6/mindfulness.dart';
import 'package:untitled6/meditation.dart';
import 'package:untitled6/dengem_sayfa.dart';


void main() {
  runApp(MaterialApp(
    home: Dengem(),
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
