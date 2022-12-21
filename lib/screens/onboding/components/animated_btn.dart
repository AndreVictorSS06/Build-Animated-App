import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class AnimatedBtn extends StatelessWidget {
  const AnimatedBtn({
    Key? key,
    required RiveAnimationController btnAnimationColtroller,
    required this.press,
  })  : _btnAnimationColtroller = btnAnimationColtroller,
        super(key: key);

  final RiveAnimationController _btnAnimationColtroller;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/RiveAssets/button.riv",
              //Lista de animação ações para o botão
              controllers: [
                _btnAnimationColtroller,
              ],
            ),
            Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(CupertinoIcons.arrow_right),
                  Text(
                    "Start The Course",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
