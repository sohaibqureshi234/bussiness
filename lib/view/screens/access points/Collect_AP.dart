import 'package:bussiness/view/screens/fillForm/fillForm.dart';
import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Collect_AP extends StatefulWidget {
  const Collect_AP({Key? key}) : super(key: key);

  @override
  State<Collect_AP> createState() => _Collect_APState();
}

class _Collect_APState extends State<Collect_AP> with TickerProviderStateMixin {
  late TabController _tabController;

  bool tabActive = true;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 5,
            child: CustomScrollView(
              slivers: <Widget>[
                customAppBar(title: "Collect Access points"),
              ],
            ),
          ),
          Expanded(
              flex: 25,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15)),
                    
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: TabBar( indicator: BoxDecoration(color: Colors.white,
                      border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                      controller: _tabController,

                      unselectedLabelColor: Colors.black54,
                      unselectedLabelStyle: TextStyle(fontSize: 18),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      // labelColor: ColorResources.AQG_PRIMARY,
                      indicatorWeight: 1,
                      automaticIndicatorColorAdjustment: true,
                      tabs: [
                        new Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                // color: tabActive
                                //     ? Colors.white
                                //     : Colors.transparent,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 10, bottom: 10),
                            child: Text(
                              "Collect AP",
                              style: DMSansRegular.copyWith( fontSize: 12,
                                  color: Coloring.appbar),
                            ),
                          ),
                        ),
                        new Tab(
                          child: Container(
                            // decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 10, bottom: 10),
                            child: Text(
                              "Pending AP",
                              style: DMSansRegular.copyWith( fontSize: 12,
                                  color: Coloring.appbar),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: ListView(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Business Name",
                                            style: DMSansRegular.copyWith(
                                                color: Coloring.appbar,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Owner Name",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Phone Number",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Address",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Note",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                          style: DMSansRegular.copyWith(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Business Name",
                                            style: DMSansRegular.copyWith(
                                                color: Coloring.appbar,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Owner Name",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Phone Number",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Address",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Note",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                          style: DMSansRegular.copyWith(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Business Name",
                                            style: DMSansRegular.copyWith(
                                                color: Coloring.appbar,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Owner Name",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Phone Number",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Address",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Note",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                          style: DMSansRegular.copyWith(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Business Name",
                                            style: DMSansRegular.copyWith(
                                                color: Coloring.appbar,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Owner Name",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Phone Number",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Address",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            "Note",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black54,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                          style: DMSansRegular.copyWith(
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => FillForm(),)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: ListView(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "Business Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Coloring.appbar,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Owner Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Phone Number",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Address",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Note",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "Business Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Coloring.appbar,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Owner Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Phone Number",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Address",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Note",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "Business Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Coloring.appbar,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Owner Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Phone Number",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Address",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Note",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: Text(
                                              "Business Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Coloring.appbar,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Owner Name",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Phone Number",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Address",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              "Note",
                                              style: DMSansRegular.copyWith(
                                                  color: Colors.black54,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: DMSansRegular.copyWith(
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          

        ],
      ),
    );
  }
}
