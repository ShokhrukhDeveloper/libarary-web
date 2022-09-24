import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:referat/app_colors/app_colors.dart';
import 'package:referat/app_colors/app_text_styles.dart';

class FiltrListItemWidget extends StatelessWidget {
  const FiltrListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(14),
      ),
      height: 160,
      child: LayoutBuilder(
        builder: (context,constrains) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //h 150
              //w 100
              ClipRRect(
                child: ClipRRect(

                  borderRadius: BorderRadius.circular(14),
                  child: CachedNetworkImage(
                    imageUrl: "https://picsum.photos/200/300",
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //15
              const SizedBox(width: 15,),

              //title and rating
              SizedBox(
                width: constrains.maxWidth-165,
                height: constrains.maxHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:constrains.maxWidth-215,
                          child: const Text("Даниел КИЗdcasdsasdasd-",
                          style: AppTextStyles.text24W500Black,
                            maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.star,size: 20,),
                              SizedBox(width:5 ,),
                              Text("4.7",
                                style: AppTextStyles.text28W700Style,
                              )
                            ],
                          ),
                        )

                      ],
                    ),

                    SizedBox(
                         width: constrains.maxWidth-165,
                          child: const Text(
                            "SIYOSAT, FANTASTIKA ",
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.text14W400Style,
                            maxLines: 1,
                          ),


                        ),
                    SizedBox(
                      height: 80,
                         width: constrains.maxWidth-165,
                          child: const Text(
                            txt,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.text8W400StyleContent,
                            maxLines: 3,
                          ),


                        ),
                    SizedBox(
                       width: constrains.maxWidth-165,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Column
                              (
                              children: const [
                                SizedBox(width: 100,
                                child: Text("Muallifi:",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text10W400StyleGray,
                                ),
                                ),
                                SizedBox(width: 100,
                                child: Text(
                                  "Kevin Smileya sdfasf asdfasdgfasdgasgdasdg ",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text14W400StyleBlack,
                                ),
                                )
                              ],
                            ) ,
                          ),
                          SizedBox(
                            width: 100,
                            child: Column
                              (
                              children: const [
                                SizedBox(width: 100,
                                child: Text("Nashriyot:",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text10W400StyleGray,
                                ),
                                ),
                                SizedBox(width: 100,
                                child: Text(
                                  "Panda Studios ",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text14W400StyleBlack,
                                ),
                                )
                              ],
                            ) ,
                          ),
                          SizedBox(
                            width: 100,
                            child: Column
                              (
                              children: const [
                                SizedBox(width: 100,
                                child: Text("Yili:",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text10W400StyleGray,
                                ),
                                ),
                                SizedBox(width: 100,
                                child: Text(
                                  "2022",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text14W400StyleBlack,
                                ),
                                )
                              ],
                            ) ,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                comment(),
                                SizedBox(
                                  width: 10,
                                ),
                                 Icon(Icons.bookmark_border_outlined,size: 20,color: AppColors.grey,)
                              ],
                            ),
                          )



                        ],
                      ),
                    )




                  ],
                ),
              ),




            ],
          );
        }
      ),
    );
  }
  Widget comment(){
    return SizedBox(
      width: 15,
      height: 15,
      child:Stack(

        children: const [
        Align(
        alignment: Alignment.center,
        child: Icon(Icons.messenger_outline_sharp,size:20,color: AppColors.grey)),
          Positioned(
              top: 4,
              right: 0,
              child: Text("9+",textAlign:TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 8,fontWeight: FontWeight.bold),))

        ],
      ),
    );
  }
}
const String txt="Lorem ipsum dolor sit amet, consectetur adipiscin"
                  "g elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  " minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo c"
                  "onsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse "
                  "cillil...";