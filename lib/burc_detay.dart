import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterburcrehberi/burc_liste.dart';
import 'models/burc.dart';



class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,                                                                                                       //  //PEMBE ALANA RESİM
            primary: true,
            flexibleSpace:FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi +" "+ "Burcu ve Özellikleri",
              ),
            ),
            backgroundColor: Colors.pink,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
