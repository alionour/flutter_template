import 'package:contest_1/src/app/navigation/navigator.dart';
import 'package:contest_1/src/skills/view/skills_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final List<String> skills = [
    "Dart",
    "Nodejs",
    "Flutter",
    "Continuous Integration",
    "Git",
    "GitHub",
    "Continuous Delivery",
    "Docker",
    "Kubernetes",
    "AWS",
  ]..sort(
      ((a, b) => a.length.compareTo(b.length)),
    );

  @override
  Widget build(BuildContext context) {
    final containerHieght = MediaQuery.of(context).size.height * 0.3;
    final imageSize = MediaQuery.of(context).size.height * 0.2;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: containerHieght,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/mountain.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.42,
                        ),
                        Positioned(
                          top: containerHieght - (imageSize / 2),
                          left: (MediaQuery.of(context).size.width * 0.5) -
                              (imageSize / 2),
                          child: Container(
                            height: imageSize,
                            width: imageSize,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      Image.asset('assets/images/profile.jpeg')
                                          .image,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Jasmine Moore',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.work,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Software Engineer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'London, UK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Flexible(
                                child: Center(
                              child: Text.rich(
                                TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    text: '250',
                                    children: [
                                      TextSpan(
                                        text: '\npoints',
                                      ),
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                            )),
                            VerticalDivider(
                              width: 10,
                              color: Colors.white,
                            ),
                            Flexible(
                                child: Center(
                              child: Text.rich(
                                TextSpan(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    text: '352650',
                                    children: [
                                      TextSpan(
                                        text: '\nviews',
                                      ),
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://img.icons8.com/color/48/undefined/whatsapp--v5.png',
                      ),
                      Image.network(
                          'https://img.icons8.com/fluency/48/undefined/linkedin-circled.png'),
                      Image.network(
                          'https://img.icons8.com/color/48/undefined/twitter--v1.png'),
                      Image.network(
                          'https://img.icons8.com/fluency/48/undefined/facebook-new.png'),
                      Image.network(
                          'https://img.icons8.com/fluency/48/undefined/linkedin-circled.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.sailing_rounded,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Skills',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: IconButton(
                            onPressed: () {
                              NavigationService.router
                                  .push(SkillsView.routeName);
                            },
                            icon: const Icon(
                              Icons.edit_attributes_rounded,
                              color: Colors.green,
                              size: 50,
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  //outer spacing
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Wrap(
                    spacing: 8, // space between items
                    runSpacing: 8,
                    children: skills
                        .map((e) => Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(e),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.contact_mail_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contact Imformation',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+44 775 888 8888',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.email_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'alionour22@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: kBottomNavigationBarHeight,
            )
          ]),
        ),
      ],
    );
  }
}
