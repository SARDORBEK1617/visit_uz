import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

enum SocialMedia { github, email, linkedin, telegram }

Future share(SocialMedia socialPlatform) async {
  final subject = 'Best Flutter Projects!';
  final urlShare = Uri.encodeComponent('http://www.youtube.com/');
  final urls = {
    SocialMedia.github: 'https://github.com/SARDORBEK1617',
    SocialMedia.linkedin:
        'http://www.linkedin.com/in/sardor-mamadaliev-00b4b823a',
    SocialMedia.telegram: 'https://t.me/N_1231', //diqqat test!!!!!!!!!!!
    //SocialMedia.email: 'http://www.youtube.com/watch?v=bWehAFTFc9o',
  };
  final url = urls[socialPlatform]!;
  if (await canLaunch(url)) {
    await launch(url);
  }
}

class _FaqPageState extends State<FaqPage> {
  final double coverHeight = 288;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: [
        buildTop(),
        buildSocialButtons(),
      ]),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Stack(
        children: [
          Image.network(
            'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/1_9hUbiy9uSWAFztyw5nMYXQ.png?alt=media&token=a02db955-cfec-49f0-9ac8-02bb6a606507',
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26, left: 300),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );

  Widget buildProfileImage() => Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.blueGrey,
              spreadRadius: 1.0,
              blurRadius: 15.0,
              offset: Offset(2.0, 2.0),
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1.0,
              blurRadius: 15.0,
              offset: Offset(-2.0, -2.0),
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                0.9,
              ]),
          // borderRadius: (BorderRadius.circular(20)),
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/visit-uz.appspot.com/o/photo_2022-05-25_18-57-07.jpg?alt=media&token=fafe3a14-daa2-4936-b91d-536302faaddf',
          ),

          radius: profileHeight / 2,
          backgroundColor: Colors.grey.shade800,
          // child: Container(
          //   decoration: BoxDecoration(borderRadius: (BorderRadius.circular(20))),
          //   child:
          //
          //   Image.network(
          //     'https://firebasestorage.googleapis.com/v0/ b/visit-uz.appspot.com/o/'
          //         'photo_2022-05-25_18-57-07.jpg?alt=media&token=fafe3a14-daa2-4936-b91d-536302faaddf',
          //     fit: BoxFit.cover,
          //     width: double.infinity,
          //     height: coverHeight,
          //   ),
          // ),
        ),
      );

  Widget buildSocialButtons() => Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "Sardor Mamadaliev",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text("Flutter Software Engineer"),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialButton(
                icon: FontAwesomeIcons.github,
                onClicked: () => share(SocialMedia.github),
              ),
              SizedBox(
                width: 12,
              ),
              buildSocialButton(
                  icon: FontAwesomeIcons.linkedin,
                  onClicked: () => share(
                        SocialMedia.linkedin,
                      )),
              SizedBox(
                width: 12,
              ),
              buildSocialButton(
                icon: FontAwesomeIcons.telegram,
                onClicked: () => share(
                  SocialMedia.telegram,
                ),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(),
          SizedBox(
            height: 16,
          ),
          NumbersWidget(),
          SizedBox(
            height: 16,
          ),
          Divider(),
          SizedBox(
            height: 16,
          ),
          buildAbout(),
        ],
      );

  Widget buildSocialButton(
          {required IconData icon, required VoidCallback onClicked}) =>
      CircleAvatar(
          radius: 25,
          child: Material(
            shape: CircleBorder(),
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(onTap: onClicked, child: Icon(icon, size: 32)),
          ));

  Widget buildAbout() => Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Text(
                'About',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Flutter SoftWare Enginer',
                style: TextStyle(fontSize: 18, height: 1.4),
              ),
            ],
          ),
        ),
      );
}

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(text: 'Projects', value: 39),
          buildDvider(),
          buildButton(text: 'Following', value: 39),
          buildDvider(),
          buildButton(text: 'Followers', value: 39),
          buildDvider(),
        ],
      );

  Widget buildDvider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton({required String text, required int value}) =>
      MaterialButton(
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "$value",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      );
}
