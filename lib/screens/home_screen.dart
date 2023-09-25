import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workoo_apptask/widgets/chips_card.dart';
import 'package:workoo_apptask/widgets/feature_card.dart';
import 'package:workoo_apptask/widgets/home_section_heading.dart';
import 'package:workoo_apptask/widgets/recommendation_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor:
                    const Color.fromARGB(66, 159, 159, 159).withOpacity(.2),
                // contentPadding: ,

                hintText: "Search the services you need",
                hintStyle: const TextStyle(fontSize: 16),
                prefixIcon: const Icon(
                  size: 20,
                  FontAwesomeIcons.magnifyingGlass,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 7, 199, 78),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 370,
                          height: 200,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            "assets/images/home_page_carosuel_img.jpeg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          right: 12,
                          top: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xffED3535).withOpacity(.9),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "50% OFF",
                              style: GoogleFonts.saira(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 24,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff6750A4),
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              "Book Now",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: const Color(0xff6750A4),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: const Color(0xff6750A4),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: const Color(0xff6750A4),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            HomeSectionHeading(
              text: "Feature Services",
              infoText: "View All",
              onInfoBtnClick: () {},
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureCard(
                    text: "Cleaning",
                    icon: FontAwesomeIcons.brush,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FeatureCard(
                    text: "Repairing",
                    icon: FontAwesomeIcons.gear,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FeatureCard(
                    text: "Painting",
                    icon: FontAwesomeIcons.paintRoller,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FeatureCard(
                    text: "Car Wash",
                    icon: FontAwesomeIcons.car,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            HomeSectionHeading(
              text: "Recommended For You",
              infoText: "1/5",
              onInfoBtnClick: () {},
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecommendationCard(),
                  SizedBox(
                    width: 8,
                  ),
                  RecommendationCard(),
                  SizedBox(
                    width: 8,
                  ),
                  RecommendationCard(),
                  SizedBox(
                    width: 8,
                  ),
                  RecommendationCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            HomeSectionHeading(
              text: "Feature Services",
              infoText: "View All",
              onInfoBtnClick: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            const Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
                ChipsCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
