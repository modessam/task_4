import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4caf50),
          title: const Text("What's App Chat"),
          actions: [
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 9,
                  ),
                  Icon(Icons.message),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/0111.png"),
                      ),
                      Text("Mod Essam"),
                      Text("modessam02@gmail.com"),
                    ],
                  ),
                ),
              ]),
        ),
        body: ListView(
          children: [
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xffff5722),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "1:30  PM",
                    style: TextStyle(color: Color(0xff4caf50)),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff4caf50),
                    radius: 15,
                    child: Text("3"),
                  )
                ],
              ),
              titl: "Mohamed Hosny",
              subs: Row(
                children: const [
                  Icon(
                    Icons.mic,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("0:07")
                ],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xff9e9e9e),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "Friday",
                    style: TextStyle(color: Color(0xffcccccc)),
                  ),
                ],
              ),
              titl: "Mohamed Mosa",
              subs: Row(
                children: const [
                  Icon(
                    Icons.done,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.photo_camera,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("photo")
                ],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xffffeb3b),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "11:45  AM",
                    style: TextStyle(color: Color(0xffb0b0b0)),
                  ),
                ],
              ),
              titl: "Mohamed samir",
              subs: Row(
                children: const [
                  Icon(
                    Icons.done,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("ازيك يا هندسة عامل ايه؟")
                ],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xffb2ff59),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "1:12  AM",
                    style: TextStyle(color: Color(0xffcccccc)),
                  ),
                ],
              ),
              titl: "ahmed lotfy",
              subs: Row(
                children: const [
                  Icon(
                    Icons.done_all,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("متنساش الفلاشة و انت جاي الكلية")
                ],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xff000000),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "11:45  AM",
                    style: TextStyle(color: Color(0xff4caf50)),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff4caf50),
                    radius: 15,
                    child: Text("1"),
                  )
                ],
              ),
              titl: "Emad Gamal",
              subs: Row(
                children: const [Text("you are a great man")],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xff18ffff),
                radius: 30,
              ),
              trl: Column(
                children: const [
                  Text(
                    "11:45  AM",
                    style: TextStyle(color: Color(0xff4caf50)),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff4caf50),
                    radius: 15,
                    child: Text("3"),
                  )
                ],
              ),
              titl: "Farah",
              subs: Row(
                children: const [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Color(0xff9e9e9e),
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("sticker")
                ],
              ),
            ),
            NewWidget(
              led: const CircleAvatar(
                backgroundColor: Color(0xff3f51b5),
                radius: 30,
              ),
              titl: "shrouk",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(Icons.photo_camera),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  Widget? led;
  Widget? subs;
  String? titl = "52";
  Widget? trl;

  NewWidget({Key? key, this.led, this.subs, this.titl, this.trl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //minVerticalPadding: 25,
      leading: led,
      title: Text(
        titl!,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: subs,
      trailing: trl,
    );
  }
}
/*
class MyTile extends ListTile {
  Color? x = Colors.black;
  Widget? subs;
  Text? titl;
  Widget? trl;
  MyTile({this.x, this.subs, this.titl, this.trl});
  @override
  // TODO: implement title
  Widget? get title => titl;
  @override
  // TODO: implement subtitle
  Widget? get subtitle => subs;
  @override
  // TODO: implement leading
  Widget? get leading => const CircleAvatar(
        backgroundColor: Color(0xffff5722),
        radius: 30,
      );
  @override
  // TODO: implement trailing
  Widget? get trailing => trl;
}*/
/*
class NewWidget extends StatelessWidget {
  Color? x = Colors.black;
  Widget? subs;
  Text? titl;
  Widget? trl;

  const NewWidget({Key? key, this.x, this.subs, this.titl, this.trl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //minVerticalPadding: 25,
      leading: const CircleAvatar(
        backgroundColor: Color(0xffff5722),
        radius: 30,
      ),
      title: const Text(
        "Mohamed Hosny",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Row(
        children: const [
          Icon(
            Icons.mic,
            size: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text("0:07")
        ],
      ),
      trailing: Column(
        children: const [
          Text(
            "1:30  PM",
            style: TextStyle(color: Color(0xff4caf50)),
          ),
          CircleAvatar(
            backgroundColor: Color(0xff4caf50),
            radius: 15,
            child: Text("3"),
          )
        ],
      ),
    );
  }
}
*/