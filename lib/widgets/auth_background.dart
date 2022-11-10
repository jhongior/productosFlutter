import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_PurpleBox(), _HeaderIcon(), this.child],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizePantalla = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: sizePantalla.height * 0.4,
      decoration: _PurpleBackground(),
      child: Stack(
        children: const [
          Positioned(
            child: _Bubble(),
            top: 10,
            left: 10,
          ),
          Positioned(
            child: _Bubble(),
            top: 90,
            left: 80,
          ),
          Positioned(
            child: _Bubble(),
            top: -40,
            left: 200,
          ),
          Positioned(
            child: _Bubble(),
            bottom: -60,
            left: 210,
          )
        ],
      ),
    );
  }
}

BoxDecoration _PurpleBackground() {
  return BoxDecoration(
      gradient: LinearGradient(colors: [
    Color.fromRGBO(63, 63, 156, 1),
    Color.fromRGBO(90, 70, 178, 1)
  ]));
}

class _Bubble extends StatelessWidget {
  const _Bubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
