import 'package:flutter/material.dart';
import 'package:frontend/widgets/numberplate.dart';
import '../../utils/fonts.dart';

class DisplayBus extends StatelessWidget {
  const DisplayBus({
    super.key,
    required this.lp,
    required this.name,
    required this.url,
  });

  final String lp;
  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name,
              style:
                  MyFont.headline.copyWith(fontSize: 45, color: Colors.brown)),
          const Spacer(),
          SizedBox(
            width: 400,
            height: 400,
            child: Image.asset("assets/$url",
                fit: BoxFit.cover, filterQuality: FilterQuality.high),
          ),
          const Spacer(),
          NumberPlate(licensePlate: lp)
        ],
      ),
    );
  }
}
