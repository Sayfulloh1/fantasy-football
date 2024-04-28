import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../domain/model/model.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({
    super.key,
  });

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  final List<Player> players = [
    Player(
        name: 'A.Ramsdale',
        position: PlayerPosition.goalKeeper,
        Offset(100, 100)),
    Player(
      name: 'A.Ramsdale',
      position: PlayerPosition.defender,
      Offset(200, 200),
    ),
    Player(
      name: 'A.Ramsdale',
      position: PlayerPosition.defender,
      Offset(230, 200),
    ),
    Player(
      name: 'A.Ramsdale',
      position: PlayerPosition.defender,
      Offset(250, 200),
    ),
    Player(
      name: 'A.Ramsdale',
      position: PlayerPosition.defender,
      Offset(280, 200),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final offsetX = (width - width) /
        2; // Replace stadiumWidth with the actual width of the stadium image
    final offsetY = (height * 0.8 - height) / 2;

    Offset offset = const Offset(200, 250);

    Map<Player, Offset> lastPlayerPositions = {};
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(children: [
            Positioned(
              left: offset.dx,
              top: offset.dx,
              child: LongPressDraggable(
                feedback: Image.asset(
                  'assets/images/forma.png',
                  height: 200,
                  color: Colors.orange,
                ),
                child: Image.asset(
                  'assets/images/forma.png',
                  height: 200,
                ),
                onDragEnd: (details) {
                  setState(() {
                    double adjustment = MediaQuery.of(context).size.height -
                        constraints.maxHeight;
                    offset = Offset(
                      details.offset.dx,
                      details.offset.dy - adjustment,
                    );
                  });
                },
              ),
            ),
          ]);
        },
      ),
    );
    /*SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .05),
          child: Column(
            children: [
              Container(
                height: height * .1,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ochkolar',
                          style: TextStyle(fontSize: height * .04),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * .5,
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Jamoam ',
                                      style: TextStyle(
                                          fontSize: height * .02,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(
                                          text: 'Arsenal',
                                          style: TextStyle(
                                              fontSize: height * .02,
                                              color: Colors.green,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * .01,
                                  ),
                                  Image.asset('assets/teams/arsenal.jpg')
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * .4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: '25 ',
                                      style: TextStyle(
                                          fontSize: height * .02,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(
                                          text: 'PTS',
                                          style: TextStyle(
                                              fontSize: height * .02,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * .01,
                                  ),
                                  Image.asset('assets/teams/score.png')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              LayoutBuilder(builder: (context, constraints) {
                return Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: width,
                      height: height * .8,
                      child: SvgPicture.asset(
                        'assets/images/stadium.svg',
                        // height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: offset.dx,
                      top: offset.dx,
                      child: LongPressDraggable(
                        feedback: Image.asset(
                          'assets/images/forma.png',
                          height: 200,
                          color: Colors.orange,
                        ),

                        child: Image.asset('assets/images/forma.png',height: 200,),
                        onDragEnd: (details){
                          setState(() {
                            double adjustment = MediaQuery.of(context).size.height-constraints.maxHeight;
                            offset = Offset(
                              details.offset.dx,
                              details.offset.dy - adjustment,
                            );
                          });
                        },
                      ),
                    ),
                    */ /* for (var player in players)
                        Positioned(
                          left: (lastPlayerPositions[player]?.dx ?? player.offset.dx) + offsetX,
                          top: (lastPlayerPositions[player]?.dy ?? player.offset.dy) + offsetY,

                          child: Draggable<Player>(
                            data: player,
                            feedback: _buildPlayerIcon(player, isDragging: true),
                            childWhenDragging: Container(),
                            onDragEnd: (details) {
                              // Update player position when drag ends
                              setState(() {
                                lastPlayerPositions[player] = details.offset; // Store the last position
                              });
                            },
                            onDragUpdate: (details) {
                              // Update player position during drag
                              setState(() {
                                lastPlayerPositions[player] = details.delta; // Update the last position
                              });
                            },
                            child: _buildPlayerIcon(player),
                          ),
                        ),*/ /*
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );*/
  }

  Widget _buildPlayerIcon(Player player, {bool isDragging = false}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          // color: isDragging ? Colors.grey.withOpacity(0.5) : Colors.blue,
          // shape: BoxShape.circle,
          ),
      child: Column(
        children: [
          Image.asset('assets/images/forma.png'),
          Text(
            player.name[0], // Display first letter of player's name
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
