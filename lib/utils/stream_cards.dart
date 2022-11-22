import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:game_streaming_app/pages/join_page.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class StreamCard extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String image_dest;
  String title;
  String subtitle;
  // ignore: non_constant_identifier_names
  StreamCard({super.key, required this.image_dest, required this.title , required this.subtitle});

  @override
  State<StreamCard> createState() => _StreamCardState();
}

class _StreamCardState extends State<StreamCard> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (() => 
      Navigator.push(context, 
     PageRouteBuilder(pageBuilder: (_, animation , __){
      return FadeTransition(
        opacity: animation,
        child: JoinPage(image_dest: widget.image_dest, title : widget.title)
        );
     }) 
      // MaterialPageRoute(builder: (context) => JoinPage(image_dest: widget.image_dest, title : widget.title))
      
      )
      ),
      child: Column(
        children:[ Container(
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(widget.image_dest), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(24)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                      color: Colors.white.withOpacity(0.3),
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(13, 15, 13, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 200,
                            // margin: const EdgeInsets.fromLTRB(13, 15, 13, 0),
                            // decoration:  const BoxDecoration(
                            //   image: DecorationImage(image: AssetImage("assets/fortnite.jpg") , fit: BoxFit.fill),
                            
                            // ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Hero(
                                
                                tag: 'animation-id-${widget.image_dest}',
                                child: Image(image: AssetImage(widget.image_dest) , fit: BoxFit.fill,))),
                          ),
                        ),
                         const SizedBox(height: 10,),
                        Text(widget.title, 
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 19
                        ),
                        ),
                        const  SizedBox(height: 5,),
                        Text(widget.subtitle, 
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 15
                        ),
                        )
                      ]
                       ),
                        ),
                      ),
                      ),
                    ),
                 
                  ),
    
                  SizedBox(height: 20,)
      ]),
    );
  }
}