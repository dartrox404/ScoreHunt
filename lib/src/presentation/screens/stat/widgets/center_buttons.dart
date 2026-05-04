import 'package:flutter/material.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/data/model/stat_model.dart';

class CenterButtons extends StatefulWidget {
  const CenterButtons({super.key});

  @override
  State<CenterButtons> createState() => _CenterButtonsState();
}

class _CenterButtonsState extends State<CenterButtons> {
  int tracker = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(navicons.length, (index) {
          return GestureDetector(
            onTap: () => setState(() {
              tracker = index;
            }),
            child: Container(
              margin: const EdgeInsets.only(right: AppSizes.kspace10),
              decoration: BoxDecoration(
                color: tracker == index
                    ? AppColors.orange
                    : AppColors.grey.withValues(alpha: .2),
                borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.kspace8,
                  horizontal: AppSizes.kspace12,
                ),
                child: Text(
                  navicons[index],
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontFamily: 'poppins',
                    color: tracker == index ? AppColors.white : AppColors.grey,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
