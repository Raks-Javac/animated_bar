import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      axis: Axis.horizontal,
      sizeFactor: CurvedAnimation(
        curve: Curves.fastOutSlowIn,
        parent: widget.animationController,
      ),
      child: Container(
        height: 100,
        color: Colors.blue,
      ),
    );
  }
}
