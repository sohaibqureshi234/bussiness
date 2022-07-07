import 'package:bussiness/view/profile/profile.dart';
import 'package:bussiness/view/utils/app_constant.dart';
import 'package:bussiness/view/utils/custom_themes.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            Align(alignment: Alignment.topRight,
              child: IconButton(
                onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile(),)),
                  icon: Icon(Icons.edit,color: Coloring.appbar,)),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                  NetworkImage("https://www.kindpng.com/picc/m/62-625011_free-png-men-pointing-left-png-images-transparent.png"),
                  backgroundColor: Colors.transparent,
                ),
                Column(children: [
                  Text("Denial Rozer",style: DMSansRegular.copyWith(
                    fontSize: 20,
                      color: Coloring.appbar,fontWeight: FontWeight.w700),),
                  Text("Swis rap",style: DMSansRegular.copyWith(color: Colors.black54),),

                ],)
              ],
            ),
            Divider(color: Colors.black54,),
            Text("Email",style: DMSansRegular.copyWith(fontWeight: FontWeight.w300),),
            SizedBox(height: 5,),

            Text("Denial@gmail.com",style: DMSansRegular.copyWith(fontWeight: FontWeight.w600),),
            SizedBox(height: 20,),

            Text("Phone Number",style: DMSansRegular.copyWith(fontWeight: FontWeight.w300),),
            SizedBox(height: 5,),

            Text("+947-123-1234",style: DMSansRegular.copyWith(fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
