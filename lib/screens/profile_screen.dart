import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 20), vertical: AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(context, 86),
                width: AppLayout.getWidth(context, 86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 10)),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/ticketsappicon.jpg"
                    )
                  )
                ),
              ),
              Gap(AppLayout.getHeight(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  // Gap(AppLayout.getHeight(context, 2)),
                  Text("New-York", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(context, 8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(context, 3), vertical: AppLayout.getHeight(context, 3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              color: Color(0xFF526799)
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white, size: 15,),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        const Text("Premium status", style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),),
                        Gap(AppLayout.getHeight(context, 5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
                        print("You are tapped");
                      },
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),))
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(context, 8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(context, 90),
                width: double.infinity, //take all the width available for use(?)
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18))
                ),
              ),
              Positioned(
                right: -45,
                top: -43,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(context, 30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF7F26D2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(context, 30), vertical: AppLayout.getHeight(context, 17)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'ve got a new reward", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You have 95 flights in a year", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white.withOpacity(0.9)),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Gap(AppLayout.getHeight(context, 20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 15)),
                Text("192802", style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
                ),),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("12 Jan 2024", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Divider(color: Colors.grey.shade300,),
                Gap(AppLayout.getHeight(context, 4)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 12)),
                const AppLayoutBuilderWidget(sections: 10, isColor: false,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: "McDonal\'s", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 12)),
                const AppLayoutBuilderWidget(sections: 10, isColor: false,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstText: "Exuma", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 12)),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          InkWell(
            onTap: (){
              print("You are tapped");
            },
              child: Center(
                child: Text(
                  "How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
