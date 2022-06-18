import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  static const String routeName = '/edit_profile';
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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

  final List<String> currentSkills = [
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
  int selectedExperience = 0;
  final List<String> years = ['1<', '1-3', '3-5', '5-10', '10-15', '15<'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Edit Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
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
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            //outer spacing
            padding: const EdgeInsets.only(left: 35.0),
            child: Wrap(
              spacing: 8, // space between items
              runSpacing: 8,
              children: skills
                  .map((e) => ChoiceChip(
                        selected: currentSkills.contains(e),
                        label: Text(e),
                        selectedColor: Colors.greenAccent,
                        onSelected: (bool selected) {
                          if (selected) {
                            setState(() {
                              currentSkills.add(e);
                            });
                          } else {
                            setState(() {
                              currentSkills.remove(e);
                            });
                          }
                        },
                        padding: const EdgeInsets.all(8),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 20,
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
                      'Experience',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            //outer spacing
            padding: const EdgeInsets.only(left: 35.0),
            child: Wrap(
              spacing: 8, // space between items

              children: years
                  .map((e) => ChoiceChip(
                        selected: selectedExperience == years.indexOf(e),
                        label: Text('$e years'),
                        selectedColor: Colors.greenAccent,
                        onSelected: (bool selected) {
                          if (selected) {
                            setState(() {
                              selectedExperience = years.indexOf(e);
                            });
                          } else {
                            setState(() {
                              selectedExperience = -1;
                            });
                          }
                        },
                        padding: const EdgeInsets.all(8),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
