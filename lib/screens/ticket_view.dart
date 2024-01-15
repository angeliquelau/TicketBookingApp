import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(context, 180),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(context, 16.0)),
        child: Column( //the whole card is the column
          children: [
            //shows the purple part of the card/ticket
            Container(
              decoration: BoxDecoration(
                color: isColor == null? Styles.purpleColor: Colors.white, //if null, use purple color, is not null, use white
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(context, 21.0)),
                topRight: Radius.circular(AppLayout.getHeight(context, 21.0)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(context, 16.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("${ticket['from']['code']}", style: isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                          height: AppLayout.getHeight(context, 24.0),
                          child: const AppLayoutBuilderWidget(sections: 6),
                        ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null? Colors.white : Color(0xFF8ACCF7)),)),],

                      )),

                      const ThickContainer(isColor: true,),
                      Expanded(child: Container()),

                      Text("${ticket['to']['code']}", style: isColor == null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3)
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(context, 100.0),
                        child: Text("${ticket['from']['name']}", style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      ),
                      Text("${ticket['flying_time']}", style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4.copyWith(color: Colors.black, fontSize: 16)),
                      SizedBox(
                        width: AppLayout.getWidth(context, 100.0),
                        child: Text("${ticket['to']['name']}", textAlign: TextAlign.end, style: isColor == null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //shows the green part of the card/ticket
            Container(
              color: isColor == null? Styles.greenColor : Colors.white, //const Color(0xFFF37867),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(context, 20.0),
                      width: AppLayout.getWidth(context, 10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null? Colors.grey.shade200 : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(context, 10.0)),
                          bottomRight: Radius.circular(AppLayout.getHeight(context, 10.0))
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(context, 12.0)),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children:
                          List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: AppLayout.getWidth(context, 5.0), height: AppLayout.getHeight(context, 1.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor == null? Colors.white : Colors.grey.shade300
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(context, 20.0),
                    width: AppLayout.getWidth(context, 10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null? Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(context, 10.0)),
                              bottomLeft: Radius.circular(AppLayout.getHeight(context, 10.0))
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bottom part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color: isColor == null? Styles.greenColor : Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor == null? AppLayout.getHeight(context, 21.0) : 0),
                      bottomRight: Radius.circular(isColor == null? AppLayout.getHeight(context, 21.0) : 0))
              ),
              padding: EdgeInsets.only(left: AppLayout.getWidth(context, 16.0), top: AppLayout.getHeight(context, 10.0), right: AppLayout.getWidth(context, 16.0), bottom: AppLayout.getHeight(context, 16.0)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start, isColor: isColor,),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: CrossAxisAlignment.center, isColor: isColor,),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end , isColor: isColor,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
