import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  Widget _buildDrawerBack() => Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 203, 236, 241),
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(children: [
        _buildDrawerBack(),
        ListView(
          padding: EdgeInsets.only(left: 32, top: 16),
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
              height: 170.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 8.0,
                    left: 0,
                    child: Text("Flutter's\nClothing",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],),
    );
  }
}
