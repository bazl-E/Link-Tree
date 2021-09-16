import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './objects.dart';
import './Items.dart';

class MyHome extends StatelessWidget {
  final List<Models> profileItems = [
    Models(
      title: 'Find my Portfolio here',
      imageURl: 'asset/icons/portfolio.png',
      url: 'https://findbasilprofilo.web.app/',
    ),
    Models(
      title: 'Follow me on LinkedIn',
      imageURl: 'asset/icons/linkedin.png',
      url: 'https://www.linkedin.com/mwlite/in/muhammed-basil-0a2b691b2',
    ),
    Models(
      title: 'Github Profile',
      imageURl: 'asset/icons/github.png',
      url: 'https://github.com/bazl-E',
    ),
    Models(
      title: 'StackOverflow',
      imageURl: 'asset/icons/stack.png',
      url: 'https://stackoverflow.com/users/15756389/bazi',
    ),
    Models(
      title: 'Twitter Account',
      imageURl: 'asset/icons/twitter.png',
      url: 'https://twitter.com/MhdBasil_E',
    ),
    Models(
      title: 'I\'m on Instagram',
      imageURl: 'asset/icons/instagram4.png',
      url: 'https://instagram.com/bazl.__?utm_medium=copy_link',
    ),
    Models(
      title: 'Here is my Youtube playlist',
      imageURl: 'asset/icons/youtube2.png',
      url: 'https://m.youtube.com/channel/UCRBfRF9kaiLnolu2V6lLVzw',
    ),
  ];
  Widget texter(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Opacity(
              opacity: .3,
              child: Container(
                // width: 800,
                // height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/icons/690196.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                // color: Colors.amber,
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsetsDirectional.only(top: 5, bottom: 5),
                      child: Image(image: AssetImage('asset/icons/bazi.png')),
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage('asset/icons/bazi.png'),
                          // ),
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(50),
                              blurRadius: 5,
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        '@bazl-E',
                        style: GoogleFonts.squadaOne(fontSize: 23),
                      ),
                    ),
                    texter('This is my Personal page 💙'),
                    texter('All my links are here 🔗'),
                    SizedBox(height: 15),
                    Expanded(
                      child: Container(
                        width: min(MediaQuery.of(context).size.width * .8, 300),
                        // height: MediaQuery.of(context).size.height * .7,
                        child: Items(profileItems),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
