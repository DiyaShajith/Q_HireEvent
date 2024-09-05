import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/fieldview/field.dart';
import 'package:qhire_event/view/salaryview/salary.dart';
import 'package:qhire_event/view/typeview/type.dart';

class Filtersheet extends StatefulWidget {
  const Filtersheet({super.key});

  @override
  State<Filtersheet> createState() => _FiltersheetState();
}

class _FiltersheetState extends State<Filtersheet> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: 3,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColor.scaffoldbg,
          borderRadius: BorderRadius.circular(25),
        ),
        height: size.height * 0.75,
        width: size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/Rectangle 19.png",
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Filter",
              style: TextStyle(
                  color: CustomColor.blackprimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            TabBar(
              padding: const EdgeInsets.all(16),
              dividerColor: Colors.transparent,
              tabs: const [
                Tab(
                  child: Text(
                    "Field",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "Type",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "Salary",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
              indicator: BoxDecoration(
                  color: CustomColor.buttonclr,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: CustomColor.buttonclr, width: 2)),
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: CustomColor.blackprimary,
              labelColor: CustomColor.scaffoldbg,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: SearchBar(
                leading: Icon(
                  Icons.search,
                  color: CustomColor.textfieldbg,
                ),
                hintText: "Search",
                hintStyle: WidgetStatePropertyAll(TextStyle(
                    color: CustomColor.uploadbg,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
                backgroundColor: WidgetStatePropertyAll(CustomColor.scaffoldbg),
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                Field(),
                Typepage(),
                Salary(),
              ]),
            ),
            Divider(
              color: CustomColor.textfieldbg1.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: CustomColor.buttonclr, width: 1)),
                    child: const Center(
                      child: Text(
                        "Clear",
                        style: TextStyle(
                            color: CustomColor.blackprimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: CustomColor.textfieldbg,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Apply",
                        style: TextStyle(
                            color: CustomColor.scaffoldbg,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
