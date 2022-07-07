import 'package:bussiness/view/screens/Bussiness/newbusiness.dart';
import 'package:bussiness/view/screens/access%20points/Collect_AP.dart';
import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bussiness extends StatefulWidget {
  const Bussiness({Key? key}) : super(key: key);

  @override
  State<Bussiness> createState() => _BussinessState();
}

class _BussinessState extends State<Bussiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 4,
            child: CustomScrollView(
              slivers: <Widget>[
                customAppBar(title: "Business"),
              ],
            ),
          ),
          Expanded(
            flex: 25,
            child: Container(
              margin: EdgeInsets.only(left: 20,),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddBusiness(),
                        ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Coloring.appbar),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Add Business",
                              style: DMSansRegular.copyWith(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.add,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30,),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "Business Name",
                                      style: DMSansRegular.copyWith(
                                        color: Coloring.appbar,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Owner Name",
                                      style: DMSansRegular.copyWith(
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Phone Number",
                                      style: DMSansRegular.copyWith(
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Text("Adress",
                                        style: DMSansRegular.copyWith(
                                          color: Colors.black38,
                                        )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Contact info",
                                          style: DMSansRegular.copyWith(
                                            color: Colors.black38,
                                          ),
                                        ),
                                        Icon(Icons.check_box,color: Coloring.body,),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Business Name",
                                style: DMSansRegular.copyWith(
                                  color: Coloring.appbar,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Owner Name",
                                style: DMSansRegular.copyWith(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Phone Number",
                                style: DMSansRegular.copyWith(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Adress",
                                  style: DMSansRegular.copyWith(
                                    color: Colors.black38,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact info",
                                    style: DMSansRegular.copyWith(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  Icon(Icons.check_box,color: Coloring.body,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Business Name",
                                style: DMSansRegular.copyWith(
                                  color: Coloring.appbar,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Owner Name",
                                style: DMSansRegular.copyWith(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Phone Number",
                                style: DMSansRegular.copyWith(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text("Adress",
                                  style: DMSansRegular.copyWith(
                                    color: Colors.black38,
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact info",
                                    style: DMSansRegular.copyWith(
                                      color: Colors.black38,
                                    ),
                                  ),
                                  Icon(Icons.check_box,color: Coloring.body,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
