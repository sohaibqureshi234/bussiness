import 'package:bussiness/view/screens/home.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "EditProfile",
              style: DMSansSemiBold.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Photo",style: DMSansRegular,),
                  SizedBox(height: 10,),
                  Image.asset("assets/png/photo.png"),
                ],
              ),
            ),

            Text("Name",style: DMSansRegular,),
            SizedBox(height: 10,),
            Form(
                child: TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 5.0),),
                    fillColor: Colors.white,
                      // border: InputBorder.none,
                      filled: true,
                      hintText: "Name"),
                )),


            
          ],
        ),
      ),
    );
  }
}
