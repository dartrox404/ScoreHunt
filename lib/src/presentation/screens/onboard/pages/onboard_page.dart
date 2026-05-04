import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/presentation/screens/onboard/widgets/column_widget.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Positioned(
            top: 15,
            right: 0,
            left: 180,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.topCenter,
                    colors: [
                      Color(0xff132a13),
                      Color(0xff004b23),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),
          ColumnWidget(),
          Positioned(
            bottom: 100,
            right: -25,
            left: 0,
            child: Image.asset(
              'assets/intro/intro-Photoroom.webp',
              // height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
