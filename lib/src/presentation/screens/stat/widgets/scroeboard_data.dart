import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';

class ScroeboardData extends StatelessWidget {
  const ScroeboardData({
    super.key,
    required this.batter,
    required this.R,
    required this.B,
    required this.fors,
    required this.sixes,
    required this.sr,
  });
  final String batter, R, B, fors, sixes, sr;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          batter,
          style: AppTextStyles.bodyLarge.copyWith(
            fontFamily: 'manrope',
            color: AppColors.grey,
          ),
        ),
        Row(
          children: [
            Text(
              R,
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'manrope',
                color: AppColors.grey,
              ),
            ),
            Gap(AppSizes.kspace10),
            Text(
              B,
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'manrope',
                color: AppColors.grey,
              ),
            ),
            Gap(AppSizes.kspace10),
            Text(
              fors,
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'manrope',
                color: AppColors.grey,
              ),
            ),
            Gap(AppSizes.kspace10),
            Text(
              sixes,
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'manrope',
                color: AppColors.grey,
              ),
            ),
            Gap(AppSizes.kspace10),
            Text(
              sr,
              style: AppTextStyles.bodyLarge.copyWith(
                fontFamily: 'manrope',
                color: AppColors.grey,
              ),
            ),
            Gap(AppSizes.kspace10),
          ],
        ),
      ],
    );
  }
}
