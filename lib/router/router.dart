import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newmatchpet/screens/guestregister.dart';
import 'package:newmatchpet/screens/mainscreens.dart';

appRoutes() =>
    [GetPage(name: '/main', page: () => const Mainscreens(), children: [])];
