import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/presentation/screens/home/pages/homepage.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.kspace15,
          horizontal: AppSizes.kspace16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Cricket',
                  style: AppTextStyles.h1.copyWith(
                    fontFamily: 'poppins',
                    color: AppColors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Thrills',
                      style: AppTextStyles.h1.copyWith(
                        fontFamily: 'poppins',
                        color: AppColors.white,
                      ),
                    ),
                    Gap(AppSizes.kspace16),
                    Text(
                      'Catch every score\nas it happen',
                      style: AppTextStyles.bodySmall.copyWith(
                        fontFamily: 'manrope',
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Video',
                  style: AppTextStyles.bodySmall.copyWith(
                    fontFamily: 'mons',
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Tutorials',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'mons',
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Gap(5),
                Text(
                  'Fantasy',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'mons',
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Tips',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'mons',
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Gap(5),
                Text(
                  'Match',
                  style: AppTextStyles.bodySmall.copyWith(
                    fontFamily: 'mons',
                    color: AppColors.grey,
                  ),
                ),
                Text(
                  'Recap',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontFamily: 'mons',
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ActionSlider.standard(
                  toggleColor: AppColors.white,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.black,
                  ),
                  backgroundColor: Color(0xff004b23),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff004b23).withValues(alpha: .5),
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(0, 8),
                    ),
                  ],
                  height: 50,
                  width: media.width * .9,
                  action: (controller) async {
                    controller.loading();
                    await Future.delayed(const Duration(seconds: 2));
                    controller.success();
                    Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                    controller.reset();
                  },
                  child: Text(
                    'Continue',
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontFamily: 'poppins',
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
