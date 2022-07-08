import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class NewInstallation extends StatefulWidget {
  const NewInstallation({Key? key}) : super(key: key);

  @override
  State<NewInstallation> createState() => _NewInstallationState();
}

class _NewInstallationState extends State<NewInstallation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 5),
        child: ListView(
          children: [

            Container(
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
            Card(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Coloring.barbg),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Access Points",
                            style: DMSansSemiBold.copyWith(
                                fontSize: 14, color: Coloring.appbar),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white),
                            child: Text(
                              '8',
                              style: TextStyle(
                                  color: Coloring.appbar, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 0, top: 20),
                      child: Text(
                        "Scan One Access point barcode",
                        style: DMSansSemiBold.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black45),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.document_scanner),
                              // fillColor: Colors.black12,
                                border: InputBorder.none,
                                filled: true,
                                hintText: "Scan Barcode"),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 0, top: 20),
                      child: Text(
                        "Scan Two Access point barcode",
                        style: DMSansSemiBold.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black45),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.document_scanner),
                                // fillColor: Colors.black12,
                                border: InputBorder.none,
                                filled: true,
                                hintText: "Scan Barcode"),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, top: 10),
                      child: Text(
                        "Speed test",
                        style: DMSansSemiBold.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black45),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                              // fillColor: Colors.black12,
                                border: InputBorder.none,
                                filled: true,
                                hintText: "Mbps"),
                          )),
                    ),


                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 100),
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => BusinessDetail(),
                          // ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Coloring.appbar),
                          child: Text(
                            "Submit",
                            style: DMSansRegular.copyWith(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
