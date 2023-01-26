import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/course_model.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  int _index=0;
  List category=["Lessons","Homeworks","Chat"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              Container(
                height: 37.h,
                width: 100.w,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/images/back1.jpg"),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: IconButton(onPressed: (){
                            Get.back();
                          }, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          padding: EdgeInsets.all(7.5),
                          child: Image.asset("lib/icons/setting.png",height: 3.5.h,color: Colors.grey,)
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.h,bottom: 1.h),
                      child: Text("Health",style: TextStyle(fontSize: 15.sp,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 70.w,
                            child: Text("Introduction to psychology",style: GoogleFonts.actor(textStyle: TextStyle(fontSize: 25.sp,color: Colors.white,fontWeight: FontWeight.w700)),)),
                        Icon(Icons.star,color: Colors.orange,size: 3.5.h,),
                        SizedBox(width: 3.w,),
                        Text("5.0",style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.w500 ,color: Colors.grey.shade200),)
                      ],
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: [
                        Text("11 lessons",style: TextStyle(fontSize: 14.5.sp,color: Colors.white70),),
                        SizedBox(width: 5.w,),
                        Text("6 hours",style: TextStyle(fontSize: 14.5.sp,color: Colors.white70),),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            height: 6.5.h,
                            width: 13.w,
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("lib/images/men1.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 1.h),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200,style: BorderStyle.solid,width: 1.6),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Icon(Icons.add,size: 4.h,color: Colors.grey,),
                  ),
                  Container(
                    height: 7.h,
                    width: 15.w,
                    margin: EdgeInsets.only(left: 3.w),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/images/men2.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 15.w,
                    margin: EdgeInsets.only(left: 3.w),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/images/women1.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 15.w,
                    margin: EdgeInsets.only(left: 3.w),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/images/women2.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  Container(
                      height: 6.8.h,
                      width: 14.w,
                      margin: EdgeInsets.only(left:3.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.5),
                            blurRadius: 5
                          )
                        ]
                      ),
                      child: Text("12+",style: TextStyle(fontSize: 13.sp,color: Colors.deepPurple.shade800,fontWeight: FontWeight.w500),)
                  ),
                ],
              ),
              Container(
                height: 5.5.h,
                margin: EdgeInsets.only(left: 2.w,top: 2.h),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_,index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        _index=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 4.w),
                      padding: EdgeInsets.symmetric(horizontal: 4.3.w,vertical: 1.2.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _index == index ? Colors.deepPurple.shade700:Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Text(category[index],style: TextStyle(fontSize: 14.5.sp,color: _index == index ? Colors.grey.shade100 : Colors.grey.shade500,fontWeight: FontWeight.w500),),
                    ),
                  );
                }),
              ),
              SizedBox(height: 1.5.h,),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: courseModel.length,
                    itemBuilder: (_,index){
                  return Container(
                    height: 13.h,
                    width: 100.w,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.7),
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 22.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage(courseModel[index].image),fit: BoxFit.cover)
                          ),
                        ),
                        SizedBox(width: 2.w,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(courseModel[index].lessonNum,style: TextStyle(fontSize: 12.5.sp,color: Colors.grey.shade400),),
                                  Expanded(child: Container()),
                                  Icon(Icons.access_time_filled_outlined,color: Colors.grey.shade400,),
                                  SizedBox(width: 1.w,),
                                  Text(courseModel[index].time,style: TextStyle(fontSize: 12.5.sp,color: Colors.grey.shade400),)
                                ],
                              ),
                              Text(courseModel[index].name,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
                              SizedBox(
                                width: 65.w,
                                child: Text(courseModel[index].des,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 11.5.sp,color: Colors.grey.shade500),maxLines: 2,),
                              )
                            ],
                          ),
                        )
                      ],
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
