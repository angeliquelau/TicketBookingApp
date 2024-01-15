import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
          padding: EdgeInsets.all(3.5),
          child: Row(
            children: [
              //for airline tickets
              Container(
                  child: Center(child: Text(firstTab)),
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 7)),
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(context, 50.0))),
                    color: Colors.white,
                  )
              ),
              Container(
                  child: Center(child: Text(secondTab)),
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 7)),
                  width: size.width * 0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(context, 50.0))),
                    color: Colors.transparent,
                  )
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 50),),
            color: const Color(0xFFF4F6FD),
          )
      ),
    );
  }
}
