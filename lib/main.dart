import 'package:flutter/material.dart';
import 'components/social_button.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightGreen[100],
                  Colors.blue[200],
                  //Colors.blue[500],
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300.0,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 10.0,
                    child: Image.network(
                      'https://viajes.nationalgeographic.com.es/medio/2015/08/06/geiranger_-_viajes_magazine_1000x569.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fiord',
                              style: kTextButtonStyle,
                            ),
                            Text(
                              'Geiranger, Noruega',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10.0),
                            Text('41', style: kTextButtonStyle),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialButton(icon: Icons.call, action: 'CALL'),
                      SocialButton(icon: Icons.directions, action: 'ROUTE'),
                      SocialButton(icon: Icons.share, action: 'SHARE'),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'El fiord de Geiranger és un fiord de la regió de Sunnmøre, situat al sud del comtat de Møre og Romsdal a Noruega. Es localitza al municipi de Stranda. És una branca d\'una quinzena de quilòmetres de l\'lysefjorden, que és una branca del Storfjorden. En el fons del fiord es troba el poble de Geiranger',
                    textAlign: TextAlign.justify,
                    style: kTextDescStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
