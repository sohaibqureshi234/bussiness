import 'package:bussiness/view/screens/access%20points/Collect_AP.dart';
import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class AddBusiness extends StatefulWidget {
  const AddBusiness({Key? key}) : super(key: key);

  @override
  State<AddBusiness> createState() => _AddBusinessState();
}

class _AddBusinessState extends State<AddBusiness> {
  String? seletedSource;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  final _formKey1 = GlobalKey<FormState>();

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
              customAppBar(title: "Add New Business"),
            ],
          ),
        ),
        Expanded(
            flex: 20,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Business Type",
                      style: DMSansSemiBold.copyWith(
                          fontSize: 16, color: Colors.black45),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: DMSansRegular,
                              hintText: "Resturant"),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Business Details",
                        style: DMSansSemiBold.copyWith(
                            fontSize: 16, color: Colors.black45),
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
                            hintText: "Burger's shop"),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Form(
                          child: TextFormField(
                        decoration: InputDecoration(
                            // fillColor: Colors.black12,
                            border: InputBorder.none,
                            filled: true,
                            hintText: "Phone Number"),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Form(
                          child: TextFormField(
                        decoration: InputDecoration(
                            // fillColor: Colors.black12,
                            border: InputBorder.none,
                            filled: true,
                            hintText: "Address"),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 100,
                      ),
                      child: Form(
                          child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.location_on),
                            // fillColor: Colors.black12,
                            border: InputBorder.none,
                            filled: true,
                            hintText: "Pin Business Address"),
                      )),
                    ),
                  ],
                ))),

        InkWell(
          onTap:  (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(),));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Coloring.appbar),
            child: Text(
              "Next",
              style: DMSansRegular.copyWith(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: DotsIndicator(
            dotsCount: 2,
            position: 0.0,
          ),
        )
      ],
    ));
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? seletedSource;
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Flexible(
          flex: 4,
          child: CustomScrollView(
            slivers: <Widget>[
              customAppBar(title: "Add New Business"),
            ],
          ),
        ),
        Expanded(
          flex: 20,
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "Select Both Access Points",
                style: DMSansSemiBold.copyWith(
                    fontSize: 16, color: Colors.black45),
              ),
            ),

              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                  Text(
                    "Number of Internal Access Photos",
                    style: DMSansSemiBold.copyWith(
                        fontSize: 13, color: Colors.black45),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Coloring.barbg),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.remove,
                              color: Coloring.appbar,
                              size: 25,
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white),
                          child: Text(
                            '3',
                            style: TextStyle(color: Coloring.appbar, fontSize: 16),
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: Coloring.appbar,
                              size: 25,
                            )),
                      ],
                    ),
                  ),
                ],),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text(
                    "Number of External Access Photos",
                    style: DMSansSemiBold.copyWith(
                        fontSize: 13, color: Colors.black45),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Coloring.barbg),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.remove,
                              color: Coloring.appbar,
                              size: 25,
                            )),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white),
                          child: Text(
                            '5',
                            style: TextStyle(color: Coloring.appbar, fontSize: 16),
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: Coloring.appbar,
                              size: 25,
                            )),
                      ],
                    ),
                  ),
                ],),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Total Access Points",
                  style: DMSansSemiBold.copyWith(
                      fontSize: 15, color: Colors.black45),
                ),
              ),
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
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      child: Text(
                        '8',
                        style: TextStyle(color: Coloring.appbar, fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 0,top: 20),
                child: Text(
                  "Label",
                  style: DMSansSemiBold.copyWith( fontWeight: FontWeight.w500,
                      fontSize: 15, color: Colors.black45),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        hintStyle: DMSansRegular,
                        hintText: "Choose Mbps Speed"),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20,top: 30),
                child: Text(
                  "Speed test",
                  style: DMSansSemiBold.copyWith( fontWeight: FontWeight.w500,
                      fontSize: 15, color: Colors.black45),
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
                margin: EdgeInsets.only(bottom: 20,top: 15),
                child: Text(
                  "Monthly Payment to the business",
                  style: DMSansSemiBold.copyWith( fontWeight: FontWeight.w500,
                      fontSize: 15, color: Colors.black45),
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
                          hintText: "Member next to NIC"),
                    )),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap:  (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Collect_AP(),));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Coloring.appbar),
                    child: Text(
                      "Done",
                      style: DMSansRegular.copyWith(
                          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
          ],),
        )),

      ],),

    );
  }
}


