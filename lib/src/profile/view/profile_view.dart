import 'package:contest_1/src/app/navigation/navigator.dart';
import 'package:contest_1/src/profile/widgets/certificate_card.dart';
import 'package:contest_1/src/profile/widgets/contact_item_card.dart';
import 'package:contest_1/src/profile/widgets/experience_card.dart';
import 'package:contest_1/src/profile/widgets/license_card.dart';
import 'package:contest_1/src/profile/widgets/review_card.dart';
import 'package:contest_1/src/skills/view/skills_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  var isProfessionalAccount = false;
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
                          child: Stack(
                            children: [
                              Container(
                                height: imageSize,
                                width: imageSize,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: Image.asset(
                                              'assets/images/profile.jpeg')
                                          .image,
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.verified_rounded,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Jasmine Moore',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Software Engineer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
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
                                        text: '\nJobs Completed',
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
                                        text: '\nViews',
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      const Tooltip(
                        message:
                            '\nEnable professional profile when you are ready to recieving contracts.\n',
                        triggerMode: TooltipTriggerMode.tap,
                        child: Icon(
                          Icons.info_outline_rounded,
                        ),
                      ),
                      Expanded(
                        child: SwitchListTile.adaptive(
                            title: const Text('Business Account'),
                            value: isProfessionalAccount,
                            activeColor: Colors.green,
                            onChanged: (v) {
                              setState(() {
                                isProfessionalAccount = v;
                              });
                            }),
                      ),
                    ],
                  ),
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
                      InkWell(
                        onTap: () {
                          launchUrl(
                            Uri.parse('https://www.linkedin.com/in/alionour'),
                          );
                        },
                        child: Image.network(
                            'https://img.icons8.com/fluency/48/undefined/linkedin-circled.png'),
                      ),
                      Image.network(
                          'https://img.icons8.com/color/48/undefined/twitter--v1.png'),
                      Image.network(
                          'https://img.icons8.com/fluency/48/undefined/facebook-new.png'),
                      Image.network(
                          'https://img.icons8.com/fluency/48/undefined/linkedin-circled.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2.0, right: 2.0),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Contact Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20),
                        ),
                        trailing: GestureDetector(
                          child: const Icon(
                            Icons.add_box_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                          onTap: () {
                            // navigate to add skill page
                            NavigationService.router
                                .push(EditProfile.routeName);
                          },
                        ),
                      ),
                      const Divider(
                        height: 3,
                      ),
                      ...contactInfo
                          .map((e) => Column(
                                children: [
                                  e,
                                  const SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ))
                          .toList(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2.0, right: 2.0),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Skills',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20),
                        ),
                        trailing: GestureDetector(
                          child: const Icon(
                            Icons.add_box_outlined,
                            color: Colors.green,
                            size: 30,
                          ),
                          onTap: () {
                            // navigate to add skill page
                            NavigationService.router
                                .push(EditProfile.routeName);
                          },
                        ),
                      ),
                      const Divider(
                        height: 3,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
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
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0),
              decoration: BoxDecoration(
                color: Colors.green[50],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Certifications',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                    trailing: GestureDetector(
                      child: const Icon(
                        Icons.add_box_outlined,
                        color: Colors.green,
                        size: 30,
                      ),
                      onTap: () {
                        // navigate to add skill page
                        NavigationService.router.push(EditProfile.routeName);
                      },
                    ),
                  ),
                  const Divider(
                    height: 3,
                  ),
                  ...certificates
                      .map((e) => Column(
                            children: const [
                              CertificationCard(),
                              SizedBox(
                                height: 2,
                              ),
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0),
              decoration: BoxDecoration(
                color: Colors.green[50],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Licenses',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                    trailing: GestureDetector(
                      child: const Icon(
                        Icons.add_box_outlined,
                        color: Colors.green,
                        size: 30,
                      ),
                      onTap: () {
                        // navigate to add skill page
                        NavigationService.router.push(EditProfile.routeName);
                      },
                    ),
                  ),
                  const Divider(
                    height: 3,
                  ),
                  ...licenses
                      .map((e) => Column(
                            children: const [
                              LicenseCard(),
                              SizedBox(
                                height: 2,
                              ),
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0),
              decoration: BoxDecoration(
                color: Colors.green[50],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Experience',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                    trailing: GestureDetector(
                      child: const Icon(
                        Icons.add_box_outlined,
                        color: Colors.green,
                        size: 30,
                      ),
                      onTap: () {
                        // navigate to add skill page
                        NavigationService.router.push(EditProfile.routeName);
                      },
                    ),
                  ),
                  const Divider(
                    height: 3,
                  ),
                  ...experience
                      .map((e) => Column(
                            children: [
                              e,
                              const SizedBox(
                                height: 2,
                              ),
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0),
              decoration: BoxDecoration(
                color: Colors.green[50],
              ),
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                  ),
                  const Divider(
                    height: 3,
                  ),
                  ...reviews
                      .map((e) => Column(
                            children: [
                              e,
                              const SizedBox(
                                height: 2,
                              ),
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
            const SizedBox(
              height: kBottomNavigationBarHeight,
            ),
          ]),
        ),
      ],
    );
  }

  final licenses = [
    const LicenseCard(),
    const LicenseCard(),
    const LicenseCard(),
  ];
  final experience = [
    const ExperienceCard(),
  ];
  final reviews = [
    const ReviewCard(
        numberOfStars: 5, text: 'He has all tools required for the job.'),
    const ReviewCard(
        numberOfStars: 2, text: 'He does not follow safety procedures.'),
    const ReviewCard(numberOfStars: 3, text: 'Good'),
  ];
  final certificates = [
    const CertificationCard(),
    const CertificationCard(),
    const CertificationCard(),
  ];
  final contactInfo = [
    const ContactItemCard(
      iconData: Icons.phone,
      text: '+44 775 888 8888',
    ),
    const ContactItemCard(
      iconData: Icons.email_rounded,
      text: 'alionour22@gmail.com',
    ),
  ];
}
