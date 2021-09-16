import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import './objects.dart';

class Items extends StatelessWidget {
  final List<Models> items;
  Items(this.items);
  void _launchURL(String url) async =>
      await canLaunch(url) ? launch(url) : throw 'cantLaunch';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (ctx, i) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.all(5),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  _launchURL(
                    items[i].url ?? '',
                  );
                },
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage(
                      items[i].imageURl ?? '',
                    ),
                  ),
                ),
                title: Text(
                  items[i].title ?? '',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
        });
  }
}
