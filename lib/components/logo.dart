import 'package:cogwheel_app/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: large_gap),
        SvgPicture.asset("assets/images/carrot.svg"),
      ],
    );
  }
}
