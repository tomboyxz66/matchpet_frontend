import 'dart:developer';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:newmatchpet/controller/match/getpetcontroller.dart';
import 'package:newmatchpet/utility/my_style.dart';
import 'package:newmatchpet/utility/appinio_swiper/example_buttons.dart';
import 'package:newmatchpet/utility/appinio_swiper/example_card.dart';
import 'package:newmatchpet/utility/appinio_swiper/example_candidate_model.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Match extends StatefulWidget {
  const Match({super.key});

  @override
  State<Match> createState() => _MatchState();
}

class _MatchState extends State<Match> {
  final AppinioSwiperController controller = AppinioSwiperController();
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.height * 0.5,
            child: AppinioSwiper(
              swipeOptions: AppinioSwipeOptions.vertical,
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
                bottom: 40,
              ),
              onEnd: _onEnd,
              cardsCount: candidates.length,
              cardsBuilder: (BuildContext context, int index) {
                return ExampleCard(candidate: candidates[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              swipeLeftButton(controller),
              typeSwitch(),
              swipeRightButton(controller),
            ],
          ),
        ],
      ),
    );
  }

  Padding typeSwitch() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: FlutterSwitch(
        width: 100.0,
        height: 50.0,
        activeText: 'Cat',
        inactiveText: 'Dog',
        toggleSize: 45.0,
        value: status,
        borderRadius: 10.0,
        padding: 8.0,
        inactiveColor: MyStyle().redColor,
        activeColor: MyStyle().fontColor,
        showOnOff: true,
        onToggle: (val) {
          setState(() {
            status = val;
          });
        },
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: " + direction.name);
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }

  void _onEnd() {
    log("end reached!");
  }
}
