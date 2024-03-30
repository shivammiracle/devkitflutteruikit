import 'package:devkitflutteruikit/Constants/ImagePath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BorderContainerPage extends StatefulWidget {
  const BorderContainerPage({super.key});

  @override
  State<BorderContainerPage> createState() => _BorderContainerPageState();
}

class _BorderContainerPageState extends State<BorderContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Border Container",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagePath.bgimg,fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w,bottom: 4.h ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Border Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                Text("This is the example of border on contiainer ",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                SizedBox(height: 1.5.h,),
                Text("Border all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    )
                  ),

                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),

                ),
                SizedBox(height: 2.h,),
                Text("Border all with color",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 4.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pink,
                        width: 1.w,
                      )
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border only 1 side",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      border: Border(
                        top:  BorderSide(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border only 2 side",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top:  BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      left:  BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border only 3 side",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top:  BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      left:  BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      bottom:  BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border simetric in vertical",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                    vertical: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border simetric in horizontal",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border width",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black,width: 1.w),
                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border all width",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 51.5.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 0.5.w,

                    ),
                  ),
                  child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
