import 'package:flutter/material.dart';

class CampusMapVisual extends StatelessWidget {
  const CampusMapVisual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Campus map image
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InteractiveViewer(
        //to enable pinch to zoom function
        minScale: 0.1,
        boundaryMargin: const EdgeInsets.all(0),
        maxScale: 3,
        // child: Image.asset('Denison_University_Map.png', fit: BoxFit.contain),
        child: Image.asset('Denison_University_Map.png', fit: BoxFit.contain),
      ),
    );
  }
}
