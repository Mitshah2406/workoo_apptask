import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12,
      ),
      height: 290,
      width: 224,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 238, 223, 253),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/images/recommendation_card_img.jpeg",
              fit: BoxFit.fill,
              height: 162,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Text(
                "John Smith",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              RichText(
                text: const TextSpan(
                  text: '\$18',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 40, 38, 38)),
                  children: <TextSpan>[
                    TextSpan(
                      text: '/hr',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 40, 38, 38),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Row(
            children: [
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 242, 175, 17),
              ),
              SizedBox(
                width: 6,
              ),
              Text("4.5 (4 Reviews)")
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Row(
            children: [
              Icon(
                FontAwesomeIcons.circleCheck,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text("5 waiting in this job")
            ],
          )
        ],
      ),
    );
  }
}
