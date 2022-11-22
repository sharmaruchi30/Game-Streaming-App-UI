
import 'package:flutter/material.dart';
import 'package:game_streaming_app/utils/colours.dart';
import 'package:game_streaming_app/utils/stream_cards.dart';
import 'package:game_streaming_app/utils/stream_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _games = [
    'All Stream',
    'CS:GO',
    'Valorant',
    'Fortnite',
    'Warcraft',
  'PUBG'
  ];
  int _selectedItemIndex= 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: const AssetImage("assets/profile.jpg"),
                  ),
                  Material(
                    elevation: 20,
                    color: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 38,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          // ignore: prefer_const_literals_to_create_immutables
                          colors: [
                            // rgba(17,16,21,255)
                            Color.fromARGB(255, 17, 16, 21),
                            // rgba(26,29,60,255)
                            Color.fromARGB(255, 26, 29, 60),
                          ],
                        ),
                      ),
                      child: Row(children: [
                        Align(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Main_Colors.color_orange,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "562",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ]),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Hi, Jonathan",
                style: GoogleFonts.poppins(
                  color: Colors.white38,
                  fontSize: 22,
                ),
              ),
              Text(
                "Cyber Stream",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(
                        _games.length,
                        (index) => GestureDetector(
                              onTap: (() => {
                                
                                    setState(
                                      () => {
                                        _selectedItemIndex = index,
                                        // if (_selectedgames.contains(_games[index].toString()) && index!=0)
                                        //   {
                                        //     _selectedgames.remove(
                                        //         _games[index].toString()),
                                        //   }
                                        // else if(index!=0)
                                        //   {
                                        //     _selectedgames
                                        //         .add(_games[index].toString()),
                                        //   }
                                      },
                                    )
                                  }),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors:
                                          _selectedItemIndex == index
                                              ? [
                                                  Main_Colors.color_blue,
                                                  Main_Colors.color_blue
                                                ]
                                              : [
                                                  const Color.fromARGB(
                                                      255, 17, 16, 21),
                                                  const Color.fromARGB(
                                                      255, 26, 29, 60),
                                                ]
                                 
                                      ),
                                ),
                                child: Center(
                                  child: Text(
                                    _games[index],
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: _selectedItemIndex == index
                                            ? 16
                                            : 15),
                                  ),
                                ),
                             
                              ),
                            )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 511,
                  child: ListView.builder(
                      itemCount: ActiveStreams.length,
                      itemBuilder: ((context, index) {
                        if(_selectedItemIndex!= 0){
                          if(_games[_selectedItemIndex] == ActiveStreams[index].cat){
                            return StreamCard(
                            image_dest: ActiveStreams[index].image_dest,
                            title: ActiveStreams[index].title,
                            subtitle: ActiveStreams[index].subtitle);
                          }

                        }
                        else{
                          return StreamCard(
                            image_dest: ActiveStreams[index].image_dest,
                            title: ActiveStreams[index].title,
                            subtitle: ActiveStreams[index].subtitle);
                        }
                        return Container();
                      }))),
            ],
          ),
        ),
      ),
    );
  }
}
