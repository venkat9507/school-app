import 'package:flutter/material.dart';
import 'package:flutter_school_app_july_1/constants/color_constants.dart';


Text TextWidgetBold(dynamic name) => Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: primarytext, fontWeight: FontWeight.bold),
    );
