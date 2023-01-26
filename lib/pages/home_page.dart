import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

import 'class_page.dart';
import 'course-detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10
              )
            ]
          ),
          child: GNav(
            tabBorderRadius: 15,
            backgroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 13.5.sp,color: Colors.deepPurple.shade900),
            tabShadow: [BoxShadow(color: Colors.grey.shade200.withOpacity(0.4), blurRadius: 10, )], // tab button shadow
            duration: Duration(milliseconds: 400), // tab animation duration
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            color: Colors.grey[600], // unselected icon color
            activeColor: Colors.deepPurple.shade900,
            iconSize: 3.4.h,
            gap: 8,
            tabBackgroundColor: Colors.black26, // selected tab background color
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.explore_sharp,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.folder,
                  text: 'Folder',
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Chat',
                )
              ]
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: 100.h,
            width: 100.w,
            padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //introduction
                Row(
                  children: [
                    Text("Welcome,",
                        style: GoogleFonts.atkinsonHyperlegible(
                          textStyle: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w800),
                        )),
                    Expanded(child: Container()),
                    Badge(
                      badgeContent: Text(
                        '2',
                        style: TextStyle(color: Colors.grey.shade100),
                      ),
                      child: Icon(
                        Icons.notifications,
                        size: 3.h,
                      ),
                      position: BadgePosition.topEnd(end: -7),
                      badgeStyle: BadgeStyle(
                          badgeColor: Colors.blue.shade700, elevation: 0),
                    ),
                    Container(
                      height: 5.5.h,
                      width: 12.w,
                      margin: EdgeInsets.only(left: 4.w),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/images/men1.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                Text("Tridip",
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey),
                    )),
                //nearest text
                Container(
                  margin: EdgeInsets.only(top: 1.5.h),
                  child: Row(
                    children: [
                      Text(
                        "Nearest",
                        style: TextStyle(
                            fontSize: 18.sp,color: Colors.blueGrey.shade900, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade900),
                      )
                    ],
                  ),
                ),
                //card
                InkWell(
                  onTap: (){
                    Get.to(()=>ClassPage());
                  },
                  child: Container(
                    height: 22.h,
                    width: 100.w,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/images/background.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nature",
                              style: TextStyle(
                                  fontSize: 12.7.sp, color: Colors.white70),
                            ),
                            Text(
                              "10:00 AM",
                              style: TextStyle(
                                  fontSize: 12.7.sp, color: Colors.white70),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Undersea World",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w600),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Container(
                              height: 4.5.h,
                              width: 9.5.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(
                                Icons.play_arrow,
                                size: 2.7.h,
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              height: 4.2.h,
                              width: 9.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("lib/images/profile.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Container(
                              height: 4.2.h,
                              width: 9.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("lib/images/women1.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Container(
                              height: 4.2.h,
                              width: 9.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("lib/images/men2.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Container(
                                height: 4.2.h,
                                width: 8.5.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  "12+",
                                  style: TextStyle(
                                      fontSize: 10.5.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //recommend text
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  child: Row(
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 18.sp,color: Colors.blueGrey.shade900, fontWeight: FontWeight.w700),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade900),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>CourseDetail());
                        },
                        child: Container(
                          height: 25.h,
                          width: 45.w,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("lib/images/back1.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Health",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade300),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(Icons.star,color: Colors.orange,size: 2.5.h,),
                                  SizedBox(width: 1.w,),
                                  Text("5.0",style: TextStyle(fontSize: 13.sp,color: Colors.grey.shade300),)
                                ],
                              ),
                              SizedBox(
                                width: 45.w,
                                child: Text("Introduction to Psychology",
                                    style: GoogleFonts.atkinsonHyperlegible(
                                      textStyle: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: Text(
                                  "What are people most afraid of? What do our dreams mean?",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      Flexible(
                        child: Container(
                          height: 25.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color:
                                    Colors.grey.shade400.withOpacity(0.4),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Self study",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.grey.shade500),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "New",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade200),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 45.w,
                                child: Text("The Science of Well-Being",
                                    style: GoogleFonts.atkinsonHyperlegible(
                                      textStyle: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: Text(
                                  "In this course you will engage in a series of challenges designed to increase your knowledge",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade400,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //task text
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  child: Row(
                    children: [
                      Text(
                        "Task for today",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w700,color: Colors.blueGrey.shade900),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade900),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 13.h,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 1.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500.withOpacity(0.4),
                            blurRadius: 10
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 10.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage("lib/images/architecture.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 4.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Architecture, XV Century",style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade500),),
                          Text("Homework 2. Essay",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w800),),
                          Text("10:00am - 11:00am",style: TextStyle(fontSize: 14.sp,color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
