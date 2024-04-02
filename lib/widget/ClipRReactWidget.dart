import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({super.key});

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("ClipRRect Widget",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w,bottom: 4.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ClipRRect Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

                Text("A Widget that clips its child using a rounded rectangle",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                SizedBox(height: 2.h,),
                Text("ClipRReact on image"),
                SizedBox(height: 0.5.h,),
                Container(
                  decoration: BoxDecoration(

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset('assets/images/img_clip1.png',height: 20.h,),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("ClipRReact on container"),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                       color: Colors.pink,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),

                  ),
                ),
                SizedBox(height: 2.h,),
                Text("ClipRReact on Container with text"),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.pink,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Text("ababababababababababababbababababababababbababababababababababababababababababababababababbabababababababababababababababababababababababababababababababababbabababababababababababbabababababbbababababab",style: TextStyle(letterSpacing: 1),),
                  ),
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
