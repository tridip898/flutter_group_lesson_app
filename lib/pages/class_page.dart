import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../model/chat_model.dart';

class ClassPage extends StatelessWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 9.h,
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.ios_share_rounded,color: Colors.grey,size: 4.7.h,),
              Container(
                height: 6.5.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.only(left: 4.w,right: 1.w,top: 0.4.h,bottom: 0.4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Text message",style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
                    Container(
                      height: 5.7.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.send,color: Colors.white,size: 3.5.h,),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 62.h,
                width: 100.w,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/images/men1.jpg"),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)
                  )
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 3.h,
                      left: 5.w,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: IconButton(onPressed: (){
                          Get.back();
                        }, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                      )
                    ),
                    Positioned(
                      top: 11.h,
                      right: 5.w,
                      child: Column(
                        children: [
                          Container(
                            height: 6.4.h,
                            width: 13.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)
                            ),
                            child: Text("12+",style: TextStyle(fontSize: 13.sp,color: Colors.grey.shade400),)
                          ),
                          Container(
                            height: 6.4.h,
                            width: 13.w,
                            margin: EdgeInsets.only(top: 1.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("lib/images/women1.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            height: 6.5.h,
                            width: 13.w,
                            margin: EdgeInsets.only(top: 1.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/images/men2.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            height: 6.5.h,
                            width: 13.w,
                            margin: EdgeInsets.only(top: 1.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/images/women2.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(08),
                            margin: EdgeInsets.only(top: 1.h),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.add,size: 4.h,color: Colors.grey,),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 4.h,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.mic_rounded,size: 3.5.h,color: Colors.grey,),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.call_end,size: 3.5.h,color: Colors.white,),
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Icon(Icons.videocam,size: 3.5.h,color: Colors.grey,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context,index)=>Divider(
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                    color: Colors.grey.shade400,
                  ),
                    itemCount: chatModel.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (_,index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: ListTile(
                      leading: Container(
                        height: 8.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(chatModel[index].image),fit: BoxFit.cover)
                        ),
                      ),
                      title: Text(chatModel[index].name,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600,color: Colors.grey.shade800),),
                      subtitle: Container(
                        margin: EdgeInsets.only(top: 1.h),
                        child: Text(chatModel[index].message,style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
                      ),
                      trailing: Text(chatModel[index].time,style: TextStyle(fontSize: 13.sp,color: Colors.grey),),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
