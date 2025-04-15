import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPhotoView extends StatefulWidget {
  @override
  _GridPhotoViewState createState() => _GridPhotoViewState();
}

class _GridPhotoViewState extends State<GridPhotoView>
    with SingleTickerProviderStateMixin {
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1741462166411-b94730c55171',

    'https://plus.unsplash.com/premium_photo-1679864497965-57c00454dbd0',

    'https://images.unsplash.com/photo-1741850826366-889f33a73327',

    'https://images.unsplash.com/photo-1741974865142-2c5b965bab06',

    'https://images.unsplash.com/photo-1741850820849-1b63a5911606',

    'https://plus.unsplash.com/premium_photo-1742455147775-4f5f6c09011b',

    'https://images.unsplash.com/photo-1741600947719-1a1bccb4191d',

    'https://images.unsplash.com/photo-1743021192899-5e78625bf0c7',

    'https://images.unsplash.com/photo-1741851374655-3911c1b0e95a',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      padding: const EdgeInsets.all(8),
      itemCount: imageUrls.length,
      cacheExtent: 9999,
      itemBuilder: (ctx, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              Image.network(
                imageUrls[index],
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 24,
                  color: Color(0xFFFFFF).withValues(alpha: 0.5),
                  alignment: Alignment.center,
                  child: Text(
                    "Légende de l'image",
                    style: TextStyle(fontSize: 14.0, color: Colors.black, decoration: TextDecoration.none),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
