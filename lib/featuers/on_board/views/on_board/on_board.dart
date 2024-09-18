import 'package:flowers/core/utils/colors.dart';
import 'package:flowers/core/utils/fonts.dart';
import 'package:flowers/core/utils/images.dart';
import 'package:flowers/featuers/home/views/home_page.dart';
import 'package:flowers/featuers/on_board/data/model/onboard_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatelessWidget {
  OnBoardScreen({super.key});

  PageController pageController= PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder

        (controller: pageController ,
        itemBuilder: (c,index){



          return Stack(
            alignment: Alignment.center,
            children: [

              MediaQuery(data:MediaQuery.of(context) ,
                  child:    Image.asset(onboardings[index].backgroundImage,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                    )),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Image.asset(onboardings[index].image),
                    SizedBox(height: 5,),
                    Text(onboardings[index].title,style: TextStyle(fontFamily: AppFonts.rocksalt,fontSize: 30),),
                    SizedBox(height: 5,),
                    Text(onboardings[index].desc,style: TextStyle(fontFamily: AppFonts.majlab,color:  Colors.grey),),
                    SizedBox(height: 50,),
                    MaterialButton(
                      minWidth: double.maxFinite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(60),
                            topRight: Radius.circular(4),
                            bottomLeft:Radius.circular(4) ,
                            bottomRight:Radius.circular(60),



                          )
                      ),

                      color: Color(0xff3C312F),

                      onPressed: (){
                        if(index== onboardings.length-1){

                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (c) {
                            return             HomePage()       ;
                          }));

                        }else{
                        pageController.animateToPage  (index+1, duration: Duration(

                              milliseconds: 200
                          ), curve: Curves.slowMiddle);

                        }

                      },
                      child: Text(onboardings[index].buttonText,style: TextStyle(color: Colors.white),),

                    ),
                    SizedBox(height: 15,),
                   SmoothPageIndicator(controller: pageController, count:onboardings.length,
                     effect: ExpandingDotsEffect(
                       activeDotColor: Colors.brown,
                       dotColor: Colors.grey.withOpacity(0.5),
                       dotHeight: 10,
                     ),
                   )




                  ],



                ),
              )







            ],
          );
        },
          itemCount: onboardings.length,

        )

      );


  }
}
