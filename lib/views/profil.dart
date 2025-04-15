import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet/custom-search-bar.dart';
import 'package:projet/grid-photo-view.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilState();
}

class _ProfilState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galerie'),
        actions: [
          IconButton(
            onPressed: () {
              print('Icône pressée');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(child: CustomSearchBar(), padding: EdgeInsets.all(16),),
          Expanded(child: GridPhotoView())
        ],
      ),
    );
  }
}
