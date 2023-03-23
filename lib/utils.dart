import 'package:flutter/material.dart';

class OKBColors {
  static const mainColor = Color.fromRGBO(0, 204, 255, 1);
}

class OKBStyles {
  static TextStyle titleText = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);
  static TextStyle bodyText =
      TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.75));
  static TextStyle boldText = const TextStyle(fontWeight: FontWeight.bold);
}

class OKBFlatButton extends StatefulWidget {
  final double padding;
  final Widget child;
  final GestureTapCallback onPressed;

  const OKBFlatButton(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.padding});

  @override
  State<OKBFlatButton> createState() => _OKBFlatButtonState();
}

class _OKBFlatButtonState extends State<OKBFlatButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        child: TextButton(
            onPressed: widget.onPressed,
            style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                foregroundColor: Colors.white,
                backgroundColor: OKBColors.mainColor,
                textStyle: const TextStyle(fontSize: 20)),
            child: widget.child));
  }
}

class OKBTextButton extends StatefulWidget {
  final Widget child;
  final GestureTapCallback onPressed;

  const OKBTextButton(
      {super.key, required this.onPressed, required this.child});

  @override
  State<OKBTextButton> createState() => _OKBTextButtonState();
}

class _OKBTextButtonState extends State<OKBTextButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20)),
        child: widget.child);
  }
}
