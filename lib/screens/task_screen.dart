import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/task_img.jpeg",
              height: 106,
              width: 109,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "No task are available currently",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Let us help you get the job done. \nBook a task and see it here.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xff6750A4),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Colors.white10,
                elevation: 0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 115, vertical: 12),
              ),
              child: const Text("Search a Tasker"),
            )
          ],
        ),
      ),
      Container(
        decoration: const BoxDecoration(),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (ctx, index) => Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(221, 161, 157, 157),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Wait in line"),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.calendar),
                              SizedBox(
                                width: 6,
                              ),
                              Text("Friday- May 27, 2022")
                            ],
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.clockRotateLeft),
                              SizedBox(
                                width: 6,
                              ),
                              Text("9:30 AM")
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          foregroundImage:
                              AssetImage("assets/images/john_doe.jpeg"),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("John Doe")
                      ],
                    ),
                  ],
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          print("hello");
                        },
                        child: const Text("Chat"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text("Chat"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
