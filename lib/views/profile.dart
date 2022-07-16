import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        buildtop(),
        buildContent(),
      ],
    ));
  }

  Widget buildtop() {
    final top = coverHeight - profileHeight / 2;
    final botton = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: botton),
          child: buildconImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildconImage() => Container(
        color: Colors.grey,
        width: double.infinity,
        height: coverHeight,
        child: Image.asset(
            'assets/animations/profile.jpeg'),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
            'https://thumbs.dreamstime.com/b/hombre-avatar-del-friki-104871313.jpg'),
      );

  Widget buildContent() => Column(
        
        children: [
          const SizedBox(height: 8),
          const Text('Yilbert Molina',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'System Enginner',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Celular :3046725884',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(width: 16),
              buildSocialIcon(FontAwesomeIcons.facebook),
              const SizedBox(width: 16),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 16),
              buildSocialIcon(FontAwesomeIcons.linkedin),
              const SizedBox(width: 16),
            ],
          ),
        ],
      );

  buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 32)),
      );
}
