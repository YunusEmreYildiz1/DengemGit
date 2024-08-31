import 'package:flutter/material.dart';
import 'package:untitled6/ana_sayfa.dart';
import 'package:untitled6/tumunu_gor_gorevler.dart';
import 'package:untitled6/muzik_klasik.dart';
import 'package:untitled6/music.dart';
import 'package:untitled6/introduction.dart';
import 'package:untitled6/loadingscreen.dart';
import 'package:untitled6/breathe.dart';

void main(){
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }

}