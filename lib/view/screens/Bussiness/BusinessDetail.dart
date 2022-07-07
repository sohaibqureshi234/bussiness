import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class BusinessDetail extends StatefulWidget {
  const BusinessDetail({Key? key}) : super(key: key);

  @override
  State<BusinessDetail> createState() => _BusinessDetailState();
}

class _BusinessDetailState extends State<BusinessDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: CustomScrollView(
                slivers: <Widget>[
                  customAppBar(title: "Businesses Detail"),
                ],
              ),
            ),
            Expanded(
              flex: 25,
              child: Container(
                margin: EdgeInsets.only(top: 40,bottom: 60,left: 20,right: 20),
                child: Card(
                  child: Container(
                    margin: EdgeInsets.only(top: 20,left: 20,right:20 ,bottom: 60),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column( mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type of Business",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Coffee Shop",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "DMSans",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              "Business Name",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Coffee Shop",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "DMSans",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              "Owner Name",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Grady Elis",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "DMSans",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              " ID NUM",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "1234",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "DMSans",
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                              Text(
                                "+972-123-123-3",
                                style: DMSansRegular.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "DMSans",
                                    color: Colors.black38),
                              ),
                              Icon(Icons.phone_enabled_rounded,color: Coloring.body,)
                            ],),

                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              "Address",
                              style: DMSansRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "DMSans",
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [

                                Text(
                                  "TheFamousC5s South\n Sunset StreetPort Orange",
                                  style: DMSansRegular.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      fontFamily: "DMSans",
                                      color: Colors.black38),
                                ),
                                Icon(Icons.location_on,color: Coloring.body,)
                              ],),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          Text(
                            "Contact Details",
                            style: DMSansRegular.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                fontFamily: "DMSans",
                                color: Colors.black),
                          ),
                          Icon(Icons.check_box,color: Coloring.appbar,)
                        ],),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
