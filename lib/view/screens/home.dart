import 'package:bussiness/view/instalation/install&repair.dart';
import 'package:bussiness/view/profile/EditProfile.dart';
import 'package:bussiness/view/screens/Bussiness/business.dart';
import 'package:bussiness/view/screens/access%20points/Collect_AP.dart';
import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    IconButton(icon: Icon(Icons.edit),
                      onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile() ,));
                      },
                      color: Coloring.body,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Bussiness(),)),
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
                                child: Image.network(

                                  "https://www.kindpng.com/picc/m/62-625011_free-png-men-pointing-left-png-images-transparent.png",
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
                                "Grady Elis",
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
                            "The Sale Representative busines And Add new business",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Install_Repair(),)),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 170,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13),
                            )),
                            color: Coloring.barbg,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/png/setting.png",
                                  width: 80,
                                  height: 80,
                                ),
                                Image.asset(
                                  "assets/png/download.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75),
                          height: 150,
                          width: 170,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13),
                              bottomLeft: Radius.circular(13),
                              bottomRight: Radius.circular(13),
                            )),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Waiting For Installation And Repair",
                                    style: DMSansSemiBold.copyWith(
                                        color: Coloring.appbar,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "The Sale Representive Contract Business",
                                    style: DMSansSemiBold.copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Collect_AP(),));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 170,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13),
                            )),
                            color: Coloring.barbg,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/png/load.png",
                                  width: 80,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 75),
                          height: 150,
                          width: 170,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(13),
                              topLeft: Radius.circular(13),
                              bottomLeft: Radius.circular(13),
                              bottomRight: Radius.circular(13),
                            )),
                            color: Colors.white,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Collect Access Points",
                                    style: DMSansSemiBold.copyWith(
                                        color: Coloring.appbar,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "The Sale Representive Contract Business And Add New business",
                                    style: DMSansSemiBold.copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
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
                    "Pending  To Approve",
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
