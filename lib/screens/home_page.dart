// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_3/utili/my_button.dart';
import 'package:project_3/utili/my_card.dart';
import 'package:project_3/utili/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final sizedBoxH10 = const SizedBox(height: 10);

  final sizedBoxW10 = const SizedBox(width: 10);
  final sizedBoxH15 = const SizedBox(height: 15);
  final elevate = 5.0;
  @override
  Widget build(BuildContext context) {
    // var md = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxH15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,
                      ),
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hello Ugochukwu,',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Find your dream job',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'what are you looking for?',
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    sizedBoxW10,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                sizedBoxH15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Search(text: 'Designer'),
                    Search(text: 'Developer'),
                    Search(text: 'Human Resource'),
                  ],
                ),
                sizedBoxH15,
                Text(
                  'Popular Jobs',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyCard(
                        text: 'Google',
                        title: 'Senior UX Designer',
                        subTitle: '\$10k - Tokyo Japan',
                        logo: Icons.g_mobiledata_rounded,
                        iconColor: Colors.green,
                      ),
                      sizedBoxW10,
                      MyCard(
                        text: 'Apple',
                        title: 'Senior Flutter Developer',
                        subTitle: '\$10k - Lagos Nigeria',
                        logo: Icons.apple_rounded,
                        iconColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby jobs',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('See all'),
                  ],
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView(
                    children: [
                      sizedBoxH10,
                      MyButton(
                        leading: Icons.g_mobiledata,
                        title: 'Senior UI Designer',
                        subTitle: 'Full time',
                        trailing: '\$8k',
                        iconColor: Colors.green,
                      ),
                      sizedBoxH10,
                      MyButton(
                        leading: Icons.facebook,
                        title: 'Senior UI Designer',
                        subTitle: 'Full time',
                        trailing: '\$8k',
                        iconColor: Colors.blue,
                      ),
                      sizedBoxH10,
                      MyButton(
                        leading: Icons.apple,
                        title: 'Senior UX Designer',
                        subTitle: 'Full time',
                        trailing: '\$10k',
                        iconColor: Colors.black,
                      ),
                    ],
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
