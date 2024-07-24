import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';
import '../widgets/search_dialog.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final searchdialog = SearchDialog();
  final TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.sort,
                        color: Colors.white,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {
                        searchdialog.searchDialog(context, searchcontroller);
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ))
                ],
              ),
              const Text(
                "Hot & Fast food",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "delievers on time",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  tabAlignment: TabAlignment.start,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Pizza",
                    ),
                    Tab(
                      text: "Burger",
                    ),
                    Tab(
                      text: "Pasta",
                    ),
                  ]),
              const SizedBox(
                height: 15,
              ),
              const Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                    ItemWidget(),
                  ]))
            ],
          ),
        )),
      ),
    );
  }
}
