import 'package:bussiness/view/screens/Bussiness/BusinessDetail.dart';
import 'package:bussiness/view/screens/access%20points/Collect_AP.dart';
import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class FillForm extends StatefulWidget {
  const FillForm({Key? key}) : super(key: key);

  @override
  State<FillForm> createState() => _FillFormState();
}

class _FillFormState extends State<FillForm> {
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
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: CustomScrollView(
              slivers: <Widget>[
                customAppBar(title: "Fill Form"),
              ],
            ),
          ),
          Expanded(
              flex: 25,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: ListView(

                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 0, top: 20),
                      child: Text(
                        "Label",
                        style: DMSansSemiBold.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black45),
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
                      margin: EdgeInsets.only(bottom: 20, top: 30),
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
                      margin: EdgeInsets.only(bottom: 20, top: 15),
                      child: Text(
                        "Monthly Payment to the business",
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
                            hintText: "Member next to NIC"),
                      )),
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BusinessDetail(),
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Coloring.appbar),
                          child: Text(
                            "Done",
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
              )),
        ],
      ),
    );
  }
}
