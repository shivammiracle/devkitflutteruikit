

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class VerticalDividerPage extends StatefulWidget {
  const VerticalDividerPage({super.key});

  @override
  State<VerticalDividerPage> createState() => _VerticalDividerPageState();
}

class _VerticalDividerPageState extends State<VerticalDividerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Vertical Divider",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),

            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w,bottom: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Vertical Divider",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

              Text("This is the example of Vertical Divider",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.5.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("Menu 1"),
                 Container(
                   height: 2.h,

                   child: VerticalDivider(
                     color: Colors.grey,
                   ),
                 ),
                 Text("Menu 2 "),
                 Container(
                   height: 2.h,

                   child: VerticalDivider(
                     color: Colors.grey,
                     thickness: 1.h,
                   ),
                 ),
                 Text("Menu 3 "),
                 SizedBox(width: 1.w,),
                 Container(
                   height: 2.h,

                   child: VerticalDivider(
                     color: Colors.grey,
                   ),
                 ),
                 Text("Menu 4 "),
               ],
             ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Menu 5"),
                  Container(
                    height: 2.h,

                    child: VerticalDivider(
                      color: Colors.pink,
                    ),
                  ),
                  Text("Menu 6 "),
                  Container(
                    height: 2.h,

                    child: Padding(
                      padding:  EdgeInsets.only(top: 1.h),
                      child: VerticalDivider(
                        color: Colors.pink,

                      ),
                    ),
                  ),
                  Text("Menu 7 "),
                  SizedBox(width: 1.w,),
                  Container(
                    height: 2.h,

                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 1.h),
                      child: VerticalDivider(
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Text("Menu 8 "),
                ],
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
