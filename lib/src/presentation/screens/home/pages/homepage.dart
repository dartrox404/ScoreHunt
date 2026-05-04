import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/presentation/screens/home/widgets/bottom_card.dart';
import 'package:scorehunt/src/presentation/screens/home/widgets/header.dart';
import 'package:scorehunt/src/presentation/screens/home/widgets/main_card_widget.dart';
import 'package:scorehunt/src/presentation/screens/home/widgets/story_row.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/bg/c4c1192632bae95b5af41c71214e1c3e.webp',
            ),
          ),
        ),
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.kspace8),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                StoryRow(),
                Gap(AppSizes.kspace15),
                Text(
                  'Match Coverage',
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Gap(AppSizes.kspace15),
                MainCardWidget(),
                Gap(AppSizes.kspace15),
                Text(
                  'Trending Now',
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Gap(AppSizes.kspace15),
                BottomCard(),
                Gap(AppSizes.kspace15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
                    color: AppColors.white.withValues(alpha: .2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pakistan Super league',
                              style: AppTextStyles.bodyMedium.copyWith(
                                fontFamily: 'poppins',
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'Season 11',
                              style: AppTextStyles.bodyMedium.copyWith(
                                fontFamily: 'poppins',
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.orange,
                            borderRadius: BorderRadius.circular(
                              AppSizes.kradiusSm,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Book Ticket',
                              style: AppTextStyles.bodyMedium.copyWith(
                                fontFamily: 'poppins',
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(AppSizes.kspace15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
