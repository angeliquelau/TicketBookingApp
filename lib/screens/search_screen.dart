import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 20), vertical: AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40.0)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 35),), //override the font size set in app_layout.dart
          Gap(AppLayout.getHeight(context, 20.0)),
          const AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(context, 25.0)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(context, 20.0)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(context, 20.0)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 18.0), horizontal: AppLayout.getWidth(context, 15.0)),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade300,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 10.0))
            ),
            child: Center(
              child:
                Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white),),
            ),
          ),
          Gap(AppLayout.getHeight(context, 40.0)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(AppLayout.getHeight(context, 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(context, 430),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 15.0), vertical: AppLayout.getHeight(context, 15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 12.0)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/aisle.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(context, 12.0)),
                    Text("20% discount on the early booking of this flight. Book now!", style: Styles.headLineStyle2,)

                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(context, 205.0),
                        decoration: BoxDecoration(
                            color: Color(0xFF3ABBBB),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 15.0), horizontal: AppLayout.getWidth(context, 15.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                            Gap(AppLayout.getHeight(context, 10)),
                            Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),

                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(context, 30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent
                          ) ,
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 15.0)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(context, 210.0),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 15.0), horizontal: AppLayout.getWidth(context, 15.0)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18)),
                      color: Colors.deepOrangeAccent
                    ),
                    child: Column(
                      children: [
                        Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(context, 5.0)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 38)
                            ),
                            TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38)
                            ),
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
