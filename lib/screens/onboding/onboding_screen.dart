import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'components/animated_btn.dart';

class OnBodingScreen extends StatefulWidget {
  const OnBodingScreen({super.key});

  @override
  State<OnBodingScreen> createState() => _OnBodingScreenState();
}

class _OnBodingScreenState extends State<OnBodingScreen> {
  //variável para animação que vai ocorrer quando pressionado
  late RiveAnimationController _btnAnimationColtroller;

  @override
  void initState() {
    //inicia a variável de animação do botão
    _btnAnimationColtroller = OneShotAnimation(
      "active",
      // evitar que a animação ocorra toda vez que iniciar o app
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //height: 100,
            bottom: 200,
            left: 100,
            width: MediaQuery.of(context).size.width * 1.7,
            child: Image.asset("assets/Backgrounds/Spline.png"),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset(
            "assets/RiveAssets/shapes.riv",
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: const [
                        Text(
                          'Learn Design & Code',
                          style: TextStyle(
                            fontSize: 60,
                            fontFamily: "Poppins",
                            height: 1.2,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Don't skip design. Learn design and code, by building real apps with Flutter and Swift. Complete courses about the best tools.",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  AnimatedBtn(
                    btnAnimationColtroller: _btnAnimationColtroller,
                    press: () {
                      //botão produz uma animação ao ser clicado
                      _btnAnimationColtroller.isActive = true;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      "Purchase includes acess to 30+ courses, 240+ premium tutorials, 120+ hours of videos, source files and certificates",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
