import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

customAppBar({required String title}) {
  return   SliverAppBar(toolbarHeight: 90,titleTextStyle: DMSansRegular,
    backgroundColor: Coloring.barbg,
    leading: Icon(Icons.arrow_back_ios,      color: Coloring.appbar,
    ),
    centerTitle: true,
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
    title: Text(title,style: DMSansRegular.copyWith(color: Coloring.appbar,fontSize: 18,fontWeight: FontWeight.w700)),
  );
}