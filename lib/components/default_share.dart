import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultShare extends StatelessWidget {
  final void Function() onTapShare;
  const DefaultShare({super.key, required this.onTapShare});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/Michelle.jpg",
              width: 50,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Michelle Appleton",
                style: TextStyle(
                  color: Color.fromRGBO(93, 109, 131, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "28 Jun 2020",
                style: TextStyle(
                  color: Color.fromRGBO(154, 159, 166, 1),
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTapShare,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(234, 240, 247, 1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/images/Share.svg",
                  width: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
