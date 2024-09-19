import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [

          ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Search a project",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 3.h,
                        width: 3.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFDF5532),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                        ),
                      ),
                    ),
                    hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Colors.black26),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              for(int i=0;i<10;i++)
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15.0), // Added margin for better separation
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Colors.black26,
                        width: .5)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/image.png",
                          height: 130.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "Kemampuan Merangkum \nTulisan",
                                  style: GoogleFonts.roboto(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BAHASA SUNDA",
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "Oleh Al-Baiqi Samaan",
                                        style: GoogleFonts.roboto(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  // Added space between the text and the gradient container
                                  // Adjust the width to create the gap

                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 10,
                    child: Container(
                      height: 30.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(colors: [
                          const Color(0xFFDF5532),
                          Colors.orange,
                        ]),
                      ),
                      child: Center(
                        child: Text(
                          "A",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width*.37,
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFFDF5532),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 24.sp,
                    ),
                    Text("Filter",style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 14.sp,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
