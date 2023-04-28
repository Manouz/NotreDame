import 'package:flutter/material.dart';

class NoteMoyenne {
  String longlet;
  Text laMoyenneDuTRim;
  Text leRang;
  Widget leContenu;

  NoteMoyenne(
      {required this.leContenu,
      required this.longlet,
      required this.laMoyenneDuTRim,
      required this.leRang});
}
