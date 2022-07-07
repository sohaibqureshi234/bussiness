import 'package:bussiness/view/utils/Constant%20Widgets/ConstWidget.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';
 class Install_Repair extends StatefulWidget {
   const Install_Repair({Key? key}) : super(key: key);

   @override
   State<Install_Repair> createState() => _Install_RepairState();
 }

 class _Install_RepairState extends State<Install_Repair> with TickerProviderStateMixin {
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
                 customAppBar(title: "Waiting And Repair"),
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
                                 left: 20, right: 20, top: 10, bottom: 10),
                             child: Text(
                               "Waiting For repair",
                               style: DMSansRegular.copyWith( fontSize: 10,
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
                               "Installation",
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
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name")
                               ],
                             ),
                           ),
                           Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20)),
                             margin: EdgeInsets.only(left: 20, right: 20),
                             child: ListView(
                               children: [
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name"),
                                 ListsTile(title: "Business Name", subtitle: "Owner Name")
                               ],
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

