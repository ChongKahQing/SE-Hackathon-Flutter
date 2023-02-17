import 'dart:ui';

import 'package:demo2/MusicPage/Detail_Music_List/music_signs.dart';
import 'package:flutter/material.dart';

import 'Detail_Music_List/music_attention.dart';
import 'Detail_Music_List/music_momories.dart';
import 'Detail_Music_List/music_stars.dart';
import 'Detail_Music_List/music_soBad.dart';
import 'Detail_Music_List/music_yummy.dart';

class MusicList extends StatefulWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(223, 255, 179, 0),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              bottom: PreferredSize(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 8, bottom: 5),
                    child: Center(
                      child: Text(
                        "Music",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(223, 255, 179, 0).withOpacity(1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                  ),
                  preferredSize: Size.fromHeight(0)),
              pinned: true,
              backgroundColor: Color.fromARGB(223, 255, 179, 0).withOpacity(1),
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                /*title: Text(
                  'Music',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                centerTitle: true,*/
                background: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/space_bg.jpg"),
                              fit: BoxFit.fitHeight)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          color: Colors.black.withOpacity(0.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              height: 315,
                              width: 315,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/music_space.png"))),
                            ),
                          ),
                          Center(
                            child: Flexible(
                              child: Text(
                                "Music can be a useful tool in relieving stress.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 17),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                  child: Container(
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 13,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://i.scdn.co/image/ab67616d0000b2735095b7a6c4b5d9b982e559f3',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Signs",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Ethan Dufault",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            const SizedBox(
                              width: 70,
                            ),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailPage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TurnBackTimePage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://images.genius.com/056ab47cbdb63594c084ab4793c4ab02.1000x1000x1.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "So Bad",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Ethan Dufault",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TurnBackTimePage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CountingStarsPage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://i.scdn.co/image/ab67616d0000b2739e2f95ae77cf436017ada9cb',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Counting stars",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "One Republic",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CountingStarsPage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AttentionPage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://cdn.promodj.com/afs/4b90f4aa4c45e1f2df0492ce6c2899de12%3Aresize%3A2000x2000%3Asame%3A18b2e0',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Attention",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Charlie Puth",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AttentionPage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SomeonePage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://i1.sndcdn.com/artworks-000601183339-uajc0g-t500x500.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Memories",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Maroon 5",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SomeonePage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => YummyPage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(26.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(70.0),
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/en/c/c3/Justin_Bieber_-_Yummy.png',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Yummy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  "Justin Bieber",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 232, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            )),
                            Container(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => YummyPage(),
                                        ));
                                  }),
                                  icon: const Icon(
                                    Icons.play_circle_fill_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              )),
            ),
          ],
        ));
  }
}
