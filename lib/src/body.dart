import 'package:animated_snack_bar/src/animation/bar_animation.dart';
import 'package:animated_snack_bar/src/core/style.dart';
import 'package:animated_snack_bar/src/core/utils.dart';
import 'package:flutter/material.dart';

class BarTester extends StatefulWidget {
  const BarTester({Key? key}) : super(key: key);

  @override
  _BarTesterState createState() => _BarTesterState();
}

class _BarTesterState extends State<BarTester> {
  late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter animated bar"),
        ),
        body: Container(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        setState(() {
                          animationController.forward();
                        });
                      },
                      child: const Text(
                        "open bar",
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        setState(() {
                          animationController.reverse();
                        });
                      },
                      child: const Text(
                        "Close bar",
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        snackbar();
                      },
                      child: const Text(
                        "Show snackbar",
                        style: kButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedSnackBar(animationController: animationController)
                ],
              )
            ],
          ),
        ));
  }
}
