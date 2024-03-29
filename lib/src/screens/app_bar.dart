import 'package:desktop_application/constants/colors.dart';
import 'package:desktop_application/helpers/responsive.dart';
import 'package:desktop_application/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

// AppBar customAppBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
//     AppBar(
//       elevation: 0,
//       leading: !ResponsiveWidget.isSmallScreen(context)
//           ? Row(
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 16),
//                   child: Icon(Icons.person_4),
//                 ),
//               ],
//             )
//           : IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: () {
//                 key.currentState!.openDrawer();
//               },
//             ),
//       title: Row(
//         children: const [
//           Visibility(
//             child: CustomText(text: 'Ankit Samrat'),
//           ),
//         ],
//       ),
//     );

AppBar customAppBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(Icons.person_4),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      title: Row(
        children: [
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: CustomText(
              text: "Dashboard",
              color: lightGrey,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: dark,
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
                onPressed: () {},
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(width: 24),
          CustomText(
            text: "Ankit Samrat",
            color: lightGrey,
          ),
          SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: active.withOpacity(.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
