import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.scaffoldbg,
      appBar: AppBar(
        backgroundColor: CustomColor.scaffoldbg,
        title: Text(
          "LOGO",
          style: TextStyle(
              color: CustomColor.textfieldbg,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.bookmark_border_outlined,
                color: CustomColor.textfieldbg,
                size: 32,
              ),
              SizedBox(width: 16), // Added padding between icons
              Icon(
                Icons.notifications,
                color: CustomColor.textfieldbg,
                size: 32,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                border: Border.all(color: CustomColor.textfieldbg1, width: 0.8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.keyboard_voice,
                                  color: CustomColor.textfieldbg,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: CustomColor.textfieldbg,
                                ),
                                hintText: "Job title, Keyboard, or Company",
                                hintStyle: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: CustomColor.textfieldbg1,
                                        width: 0.5))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: size.width * 0.1,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: CustomColor.textfieldbg1, width: 1.5),
                        ),
                        child: Icon(
                          Icons.tune,
                          color: CustomColor.textfieldbg,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: CustomColor.textfieldbg,
                        size: 32,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Calicut, Kerala",
                        style: TextStyle(
                            color: CustomColor.uploadbg,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: size.width * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: CustomColor.textfieldbg1.withOpacity(0.2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_alarm_sharp,
                                  color: CustomColor.blackprimary,
                                ),
                                Text(
                                  "UI/UX Design",
                                  style: TextStyle(
                                      color: CustomColor.blackprimary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: CustomColor.textfieldbg1.withOpacity(0.2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_alarm_sharp,
                                  color: CustomColor.blackprimary,
                                ),
                                Text(
                                  "UI Design",
                                  style: TextStyle(
                                      color: CustomColor.blackprimary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: CustomColor.textfieldbg1.withOpacity(0.2),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_alarm_sharp,
                                  color: CustomColor.blackprimary,
                                ),
                                Text(
                                  "UX Writing",
                                  style: TextStyle(
                                      color: CustomColor.blackprimary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: CustomColor.buttonclr),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                              color: CustomColor.scaffoldbg,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: CustomColor.buttonclr, width: 1)),
                      child: Center(
                        child: Text(
                          "Part Time",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: CustomColor.buttonclr, width: 1)),
                      child: Center(
                        child: Text(
                          "Full Time",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: CustomColor.buttonclr, width: 1)),
                      child: Center(
                        child: Text(
                          "Freelance",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: CustomColor.buttonclr, width: 1)),
                      child: Center(
                        child: Text(
                          "Remote",
                          style: TextStyle(
                              color: CustomColor.blackprimary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: const Text(
                "Recommended For You",
                style: TextStyle(
                    color: CustomColor.blackprimary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: CustomColor.textfieldbg1, width: 0.8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage("assets/softronics.png"),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Softroniics\nUI/UX Designer",
                                style: TextStyle(
                                    color: CustomColor.blackprimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.bookmark_border,
                                color: CustomColor.textfieldbg,
                                size: 45,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "2nd Floor, Maniyattukudi Asfa\nBuilding, Mavoor Road Calicut, Kerala",
                            style: TextStyle(
                                color: CustomColor.uploadbg,
                                fontSize: 19,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Full Time",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.circle,
                                color: CustomColor.uploadbg,
                                size: 10,
                              ),
                              Text(
                                "Exp 3 Years",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.circle,
                                color: CustomColor.uploadbg,
                                size: 10,
                              ),
                              Text(
                                "Remote",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: CustomColor.textfieldbg,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                    color: CustomColor.scaffoldbg,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: CustomColor.textfieldbg1, width: 0.8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage("assets/softronics.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "Softroniics\nHR",
                                    style: TextStyle(
                                        color: CustomColor.blackprimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.bookmark_border,
                                    color: CustomColor.textfieldbg,
                                    size: 45,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "2nd Floor, Maniyattukudi Asfa\nBuilding, Mavoor Road Calicut, Kerala",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Full Time",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Exp 5 Years",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Remote",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: CustomColor.textfieldbg,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: CustomColor.scaffoldbg,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: CustomColor.textfieldbg1, width: 0.8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage("assets/softronics.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "Softroniics\nUI/UX Designer",
                                    style: TextStyle(
                                        color: CustomColor.blackprimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.bookmark_border,
                                    color: CustomColor.textfieldbg,
                                    size: 45,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "2nd Floor, Maniyattukudi Asfa\nBuilding, Mavoor Road Calicut, Kerala",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Full Time",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Exp 3 Years",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Remote",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: CustomColor.textfieldbg,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: CustomColor.scaffoldbg,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: CustomColor.textfieldbg1, width: 0.8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage("assets/softronics.png"),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "Softroniics\nHR",
                                    style: TextStyle(
                                        color: CustomColor.blackprimary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.bookmark_border,
                                    color: CustomColor.textfieldbg,
                                    size: 45,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "2nd Floor, Maniyattukudi Asfa\nBuilding, Mavoor Road Calicut, Kerala",
                                style: TextStyle(
                                    color: CustomColor.uploadbg,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Full Time",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Exp 5 Years",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: CustomColor.uploadbg,
                                    size: 10,
                                  ),
                                  Text(
                                    "Remote",
                                    style: TextStyle(
                                        color: CustomColor.uploadbg,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: CustomColor.textfieldbg,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        color: CustomColor.scaffoldbg,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: const Text(
                "Featured Jobs",
                style: TextStyle(
                    color: CustomColor.blackprimary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: CustomColor.textfieldbg1, width: 0.8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border:
                            Border.all(color: CustomColor.buttonclr, width: 1)),
                    child: Center(
                      child: Text(
                        "3 days ago",
                        style: TextStyle(
                            color: CustomColor.textfieldbg,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Amazon (1).png"),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UI/UX Designer",
                              style: TextStyle(
                                  color: CustomColor.blackprimary,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              "Amazon",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "California, USA.",
                      style: TextStyle(
                          color: CustomColor.uploadbg,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: CustomColor.buttonclr, width: 1)),
                        child: Center(
                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: CustomColor.textfieldbg,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Apply",
                            style: TextStyle(
                                color: CustomColor.scaffoldbg,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: CustomColor.textfieldbg1, width: 0.8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border:
                            Border.all(color: CustomColor.buttonclr, width: 1)),
                    child: Center(
                      child: Text(
                        "Today",
                        style: TextStyle(
                            color: CustomColor.textfieldbg,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Uber App (1).png"),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UI/UX Designer",
                              style: TextStyle(
                                  color: CustomColor.blackprimary,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              "Uber",
                              style: TextStyle(
                                  color: CustomColor.uploadbg,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:const Text(
                      "Bangalore",
                      style: TextStyle(
                          color: CustomColor.uploadbg,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding:const  EdgeInsets.all(8),
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: CustomColor.buttonclr, width: 1)),
                        child: Center(
                          child: const Text(
                            "Internship",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: CustomColor.textfieldbg,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Apply",
                            style: TextStyle(
                                color: CustomColor.scaffoldbg,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
