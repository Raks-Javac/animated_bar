import 'package:flutter/material.dart';

class AnimatedSnackBar extends StatefulWidget {
  AnimationController animationController;
  AnimatedSnackBar({Key? key, required this.animationController})
      : super(key: key);

  @override
  _AnimatedSnackBarState createState() => _AnimatedSnackBarState();
}

class _AnimatedSnackBarState extends State<AnimatedSnackBar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor: CurvedAnimation(
          curve: Curves.fastOutSlowIn,
          parent: widget.animationController,
        ),
        child: Container(height: 100, color: Colors.blue));
    ;
  }
}

class BarTester extends StatefulWidget {
  BarTester({Key? key}) : super(key: key);

  @override
  _BarTesterState createState() => _BarTesterState();
}

class _BarTesterState extends State<BarTester>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text("hi"),
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
                  child: Text("hi"),
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
