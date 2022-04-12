import 'package:flutter/material.dart';

/* import and use with InnerShadowCard(child)*/
/* child = any widget eg. Column(children: [...]) */
class InnerShadowCard extends StatelessWidget {
  const InnerShadowCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: const EdgeInsets.only(bottom: 15.0),
      //padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
          ),
          BoxShadow(
            color: Colors.teal[50]!,
            spreadRadius: -2.0,
            blurRadius: 1.0,
          ),
        ],
      ),
    );
  }
}
