import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet/views/profil.dart';

void main() {

  runApp(MyApp());

}



class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue, // Ou ce que vous voulez 

        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),

      initialRoute: '/profil',
      routes: {
        '/profil' : (context) => const ProfilPage()
      },

    );

  }

} 