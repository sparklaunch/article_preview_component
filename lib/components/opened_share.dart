import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OpenedShare extends StatelessWidget {
  final void Function() onTapShare;
  const OpenedShare({super.key, required this.onTapShare});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(64, 75, 96, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            const Text(
              "SHARE",
              style: TextStyle(
                color: Color.fromRGBO(160, 173, 197, 1),
                letterSpacing: 5,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 20),
            SvgPicture.asset(
              "assets/images/Facebook.svg",
              width: 30,
            ),
            const SizedBox(width: 20),
            SvgPicture.asset(
              "assets/images/Twitter.svg",
              width: 30,
            ),
            const SizedBox(width: 20),
            SvgPicture.asset(
              "assets/images/Pinterest.svg",
              width: 30,
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTapShare,
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(100, 116, 142, 1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/images/Share.svg",
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
