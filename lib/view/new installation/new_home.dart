import 'package:bussiness/view/new%20installation/NewInstallation.dart';
import 'package:bussiness/view/profile/EditProfile.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
                      style: DMSansSemiBold.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    // IconButton(icon: Icon(Icons.edit),
                    //   onPressed: (){
                    //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile() ,));
                    //   },
                    //   color: Coloring.body,
                    // )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewInstallation(),)),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Coloring.body,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13))),
                          height: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),)),
                                child: Image.asset(
"assets/png/new.png",
                                  height: 90,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, right: 20),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: Text(
                                      "112",
                                      style: DMSansRegular.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: Coloring.body),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 80,bottom: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13),
                                bottomRight: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                                topRight: Radius.circular(13))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Installation",
                                    style: DMSansRegular.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Coloring.body),
                                  ),
                                  Text(
                                    "Total Business",
                                    style: DMSansRegular.copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Coloring.body),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 20),
                              child: Text(
                                "The Technichian add New Installation business",
                                style: DMSansRegular.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Coloring.appbar,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13))),
                      height: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(),)),
                            child: Image.asset(
                              "assets/png/setting.png",
                              height: 90,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 20),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: Text(
                                  "112",
                                  style: DMSansRegular.copyWith(
                                      fontWeight: FontWeight.w900,
                                      color: Coloring.body),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 80,bottom: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13),
                            bottomLeft: Radius.circular(13),
                            topRight: Radius.circular(13))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "New Installation",
                                style: DMSansRegular.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Coloring.body),
                              ),
                              Text(
                                "Total Business",
                                style: DMSansRegular.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Coloring.body),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 8, vertical: 20),
                          child: Text(
                            "The Technichian Repair Access points and business",
                            style: DMSansRegular.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black12,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Recent New Installation",
                    style: DMSansRegular.copyWith(fontWeight: FontWeight.w700),
                  )),
              ListsTile(title: "Business Name", subtitle: "Owner Name"),
              ListsTile(title: "Business Name", subtitle: "Owner Name"),
              ListsTile(title: "Business Name", subtitle: "Owner Name"),
            ],
          ),
        ));
  }

  ListsTile({required String title, required String subtitle}) {
    return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
            title: Text(
              title,
              style: DMSansRegular.copyWith(color: Coloring.appbar),
            ),
            subtitle: Text(
              subtitle,
              style: DMSansRegular.copyWith(),
            )));
  }
}
