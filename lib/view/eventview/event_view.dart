import 'package:flutter/material.dart';
import 'package:qhire_event/constants/custom_color.dart';
import 'package:qhire_event/view/eventview/eventcancelled.dart';
import 'package:qhire_event/view/eventview/eventupcoming.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: CustomColor.scaffoldbg,
          appBar: AppBar(
            title: const Text("Event"),
          ),
          body: Column(
            children: [
              TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  onTap: (value) {},
                  tabs: [
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: CustomColor.textfieldbg),
                        child: const Center(
                          child: Text(
                            "Upcoming",
                            style: TextStyle(
                                color: CustomColor.scaffoldbg,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: CustomColor.textfieldbg, width: 1.5),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Center(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                color: CustomColor.blackprimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ]),
              const Expanded(
                  child: TabBarView(children: [
                Eventupcoming(),
                Eventcancelled(),
              ]))
            ],
          ),
        ));
  }
}
