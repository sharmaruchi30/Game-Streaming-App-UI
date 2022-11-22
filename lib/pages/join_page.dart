import 'package:flutter/material.dart';
import 'package:game_streaming_app/utils/colours.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class JoinPage extends StatelessWidget {
  String image_dest;
  String title;
  int _animationTime = 100;
  // ignore: non_constant_identifier_names
  JoinPage({super.key, required this.image_dest, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,

            child: Hero(
              tag: 'animation-id-${image_dest}',
              child: Image(image: AssetImage(image_dest) , fit: BoxFit.fill,)),
          ),

          const SizedBox(height: 20,),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TweenAnimationBuilder(
                    tween: Tween(begin: 1.0 , end: 0.0),
                    duration: Duration(milliseconds:_animationTime +200), 
                    builder: (context, value, child){
                      return Transform.translate(
                        offset: Offset((value as double) *100 , 0.0),
                        child: Column(
                          children:[ Text(title , 
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 34
                            ),
                            ),
                        const SizedBox(
                            height: 10,
                          ),
                             ]),
                          
                        );
                    }),

                    TweenAnimationBuilder(
                      tween: Tween(begin: 1.0 , end: 0.0), 
                      duration: Duration(milliseconds: _animationTime+ 250), 
                      builder: (context, value, child){
                          return Transform.translate(
                            offset: Offset((value as double) * 100 , 0.0),
                            child: Column(
                              children: [
                                Text("Two teams will meet in the semi-finals of the cup in the fight for the title of best.", 
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white54,
                                                  fontSize: 16
                                                ),
                                                ),
                                                const SizedBox(height: 40,)  
                              ],
                            ),
                          );

                      }),
                      TweenAnimationBuilder(
                      tween: Tween(begin: 1.0 , end: 0.0), 
                      duration: Duration(milliseconds:_animationTime + 300), 
                      builder: (context, value, child){
                          return Transform.translate(
                            offset: Offset((value as double) * 100 , 0.0),
                            child: Column(
                              children: [
                               Container(
                        height: 180,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                        color: const  Color.fromARGB(255, 35, 35, 35),
                        borderRadius: BorderRadius.circular(22)
                        ),
                          
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Icon(Icons.label , color: Main_Colors.color_orange, ),
                          
                                    ),
                                    const SizedBox(width: 18,),
                                    Text("Fanatic",style: GoogleFonts.poppins(
                                      fontSize: 16,
                                  color: Colors.white
                                ),)
                                  ],
                                ),
                                Text("9" , style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),)
                              ],
                            ),
                            const SizedBox(height: 10,),
                              const Divider(
                              color: Colors.white30,
                              // height: 180 ,
                            
                              ),
                              const SizedBox(height: 10,),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Icon(Icons.label , color: Colors.yellow[600], ),
                          
                                    ),
                                    const SizedBox(width: 18,),
                                    Text("Natus Vincere",style: GoogleFonts.poppins(
                                      fontSize: 16,
                                  color: Colors.white
                                ),)
                                  ],
                                ),
                                Text("13" , style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),)
                              ],
                            ),
                            ],
                          ),
                        ),
                      ),
                              ],
                            ),
                          );

                      }),
                      TweenAnimationBuilder(
                      tween: Tween(begin: 1.0 , end: 0.0), 
                      duration: Duration(milliseconds:_animationTime + 350), 
                      builder: (context, value, child){
                          return Transform.translate(
                            offset: Offset((value as double) * 100 , 0.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 50,),
                      Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Main_Colors.color_blue,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Center(child: Text("Join", 
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                        ), 
                         
                         ),
                      )
                              ],
                            ),
                          );

                      }),
                ],
                
              ),

                
              // child: TweenAnimationBuilder<Object>(
              //   tween: Tween(begin: 1.0 , end: 0.0),
              //   duration: const Duration(seconds: 1),
               
              //   builder: (context, value, child) 
              //   {
              //     return Transform.translate(
              //       offset: Offset((value as double) * 100 , 0.0),
              //       child:
              //        Column(
              //         children: [
              //         Text(title , 
              //         style: GoogleFonts.poppins(
              //           color: Colors.white,
              //           fontSize: 34
              //         ),
              //         ),
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         Text("Two teams will meet in the semi-finals of the cup in the fight for the title of best.", 
              //         style: GoogleFonts.poppins(
              //           color: Colors.white54,
              //           fontSize: 16
              //         ),
              //         ),
              //         const SizedBox(height: 40,)  ,
              //         Container(
              //           height: 180,
              //           // ignore: prefer_const_constructors
              //           decoration: BoxDecoration(
              //           color: const  Color.fromARGB(255, 35, 35, 35),
              //           borderRadius: BorderRadius.circular(22)
              //           ),
                          
              //           child: Padding(
              //             padding: const EdgeInsets.all(20),
              //             child: Column(
                            
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               // ignore: prefer_const_literals_to_create_immutables
              //               children: [
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       CircleAvatar(
              //                         child: Icon(Icons.label , color: Main_Colors.color_orange, ),
                          
              //                       ),
              //                       const SizedBox(width: 18,),
              //                       Text("Fanatic",style: GoogleFonts.poppins(
              //                         fontSize: 16,
              //                     color: Colors.white
              //                   ),)
              //                     ],
              //                   ),
              //                   Text("9" , style: GoogleFonts.poppins(
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white
              //                   ),)
              //                 ],
              //               ),
              //               const SizedBox(height: 10,),
              //                 const Divider(
              //                 color: Colors.white30,
              //                 // height: 180 ,
                            
              //                 ),
              //                 const SizedBox(height: 10,),
              //                 Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Row(
              //                     children: [
              //                       CircleAvatar(
              //                         child: Icon(Icons.label , color: Colors.yellow[600], ),
                          
              //                       ),
              //                       const SizedBox(width: 18,),
              //                       Text("Natus Vincere",style: GoogleFonts.poppins(
              //                         fontSize: 16,
              //                     color: Colors.white
              //                   ),)
              //                     ],
              //                   ),
              //                   Text("13" , style: GoogleFonts.poppins(
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white
              //                   ),)
              //                 ],
              //               ),
              //               ],
              //             ),
              //           ),
              //         ),
                      // const SizedBox(height: 50,),
                      // Container(
                      //   height: 70,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     color: Main_Colors.color_blue,
                      //     borderRadius: BorderRadius.circular(37),
                      //   ),
                      //   child: Center(child: Text("Join", 
                      //   style: GoogleFonts.poppins(
                      //     color: Colors.white,
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.w600
                      //   ),
                      //   ), 
                         
                      //    ),
                      // )
              //       ],
              //                     ),
              //     );
              //   }
              //   ,
              // ),
            ),
          )
        ],
      ),
    );
  }
}