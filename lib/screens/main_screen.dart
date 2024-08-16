import 'package:article_preview_component/components/default_share.dart';
import 'package:article_preview_component/components/opened_share.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isShareOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 238, 245, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(3, 3),
                ),
              ],
            ),
            clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/Drawers.jpg"),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        "Shift the overall look and feel by adding these wonderful touches to furniture in your home",
                        style: TextStyle(
                          color: Color.fromRGBO(100, 116, 141, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Ever been in a room and felt like something was missing? Perhaps it felt slightly bare and uninviting. I've got some simple tips to help you make any room feel complete.",
                        style: TextStyle(
                          color: Color.fromRGBO(102, 110, 118, 1),
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
                isShareOpen
                    ? OpenedShare(onTapShare: onTapShare)
                    : DefaultShare(
                        onTapShare: onTapShare,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapShare() {
    setState(() {
      isShareOpen = !isShareOpen;
    });
  }
}
