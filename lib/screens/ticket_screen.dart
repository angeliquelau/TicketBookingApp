import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 20), vertical: AppLayout.getHeight(context, 20)),
            children: [
              Gap(AppLayout.getHeight(context, 40)),
              Text("Tickets", style: Styles.headLineStyle1.copyWith(fontSize: 35)),
              Gap(AppLayout.getHeight(context, 20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous",),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
                child: TicketView(ticket: ticketList[0], isColor: true)
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 16.0)), //for outside the container
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20), // for inside the container
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: "5221 364869", secondText: "Passport", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5), // the dotted line
                    Gap(AppLayout.getHeight(context, 20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "98767 40937896", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: "B2SG28", secondText: "Booking code", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5), // the dotted line
                    Gap(AppLayout.getHeight(context, 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 55),
                                Text(" *** 2462", style: Styles.headLineStyle3,),
                              ],
                            ),
                            Gap(5),
                            Text("Payment method", style: Styles.headLineStyle4),
                          ],
                        ),
                        AppColumnLayout(firstText: "\$249.99", secondText: "Price", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    SizedBox(height: 1,),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              //bar code
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(AppLayout.getHeight(context, 21)), bottomLeft: Radius.circular(AppLayout.getHeight(context, 21)))
                ),
                margin: EdgeInsets.only(left: AppLayout.getHeight(context, 15), right: AppLayout.getHeight(context, 15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(context, 20), bottom: AppLayout.getHeight(context, 20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(context, 15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/angelique-lau',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
                  child: TicketView(ticket: ticketList[0])
              ),
            ],
        ),
          Positioned(
            left: AppLayout.getHeight(context, 17),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(context, 17),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ]
      ),
    );
  }
}
