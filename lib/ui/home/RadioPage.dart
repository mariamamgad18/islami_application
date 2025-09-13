import 'package:flutter/material.dart';
import 'package:islami/ui/home/RadioData.dart';

import '../../utils/AppColors.dart';
import '../../utils/AppImages.dart';
import 'RadioCotainer.dart';

class Radiopage extends StatefulWidget {
  final List<Map<String, String>> Radio = RadioData().RadioList;

  @override
  State<Radiopage> createState() => _RadiopageState();
}

class _RadiopageState extends State<Radiopage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.Scaffoldcolor,
      body: Stack(
        children: [
          Image.asset(
            Appimages.RadioBackground,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 60, left: 60),
                child: Image.asset(
                  Appimages.islamilogo,
                  fit: BoxFit.fill,
                  width: 289,
                  height: 129,
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: Appcolors.blackcolor,
                unselectedLabelColor: Appcolors.whitecolor,
                indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: Appcolors.biegecolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                tabs: [
                  Container(
                    width: 185,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Radio",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    width: 185,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "Reciters",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: widget.Radio.length,
                      itemBuilder: BuildItemInListRadio,
                    ),
                    ListView.builder(
                      itemCount: widget.Radio.length,
                      itemBuilder: BuildItemInListReciter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Radiocotainer BuildItemInListRadio(BuildContext context, int index) {
    return Radiocotainer(text: widget.Radio[index]["name"] ?? "");
  }

  Radiocotainer BuildItemInListReciter(BuildContext context, int index) {
    return Radiocotainer(text: widget.Radio[index]["Reciters"] ?? "");
  }
}
