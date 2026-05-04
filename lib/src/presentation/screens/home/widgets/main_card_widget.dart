import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/data/model/main_card_data.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: maincardatals.length,
        itemBuilder: (BuildContext context, int index) {
          final x = maincardatals[index];
          return Container(
            height: 200,
            margin: const EdgeInsets.only(right: AppSizes.kspace10),
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
              color: AppColors.grey.withValues(alpha: .2),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSizes.kradiusSm,
                              ),
                              color: AppColors.orange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                x.live,
                                style: AppTextStyles.bodySmall.copyWith(
                                  fontFamily: 'manrope',
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Gap(5),
                          Text.rich(
                            TextSpan(
                              style: AppTextStyles.bodyMedium.copyWith(
                                fontFamily: 'rubik',
                                color: AppColors.white,
                              ),
                              children: [
                                TextSpan(text: 'Match${x.matchno}, '),
                                TextSpan(text: x.venue),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(AppSizes.kspace16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(x.imageA, height: 70),
                              Text(
                                x.teamA,
                                style: AppTextStyles.bodySmall.copyWith(
                                  fontFamily: 'poppins',
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                          Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              style: AppTextStyles.bodyMedium.copyWith(
                                fontFamily: 'rubik',
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                              children: [
                                TextSpan(text: '${x.r1}/${x.w1}\n'),
                                TextSpan(text: x.o1),
                              ],
                            ),
                          ),
                          Gap(AppSizes.kspace10),
                          Text(
                            'VS',
                            style: AppTextStyles.h3.copyWith(
                              fontFamily: 'rubik',
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(5),
                          Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${x.r2}/${x.w2}\n',
                                  style: AppTextStyles.bodyMedium.copyWith(
                                    fontFamily: 'rubik',
                                    color: AppColors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: x.o2,
                                  style: AppTextStyles.bodyLarge.copyWith(
                                    fontFamily: 'rubik',
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(AppSizes.kspace8),
                          Column(
                            children: [
                              Image.asset(x.imageB, height: 70),
                              Text(
                                x.teamB,
                                style: AppTextStyles.bodySmall.copyWith(
                                  fontFamily: 'poppins',
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(AppSizes.kspace10),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.black.withValues(alpha: .2),
                          borderRadius: BorderRadius.circular(
                            AppSizes.kradiusSm,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            x.yettobat == true
                                ? "${x.teamA} win the toss & choose to bat"
                                : '${x.teamB} loose the toss & choose to bowl',
                            style: AppTextStyles.bodySmall.copyWith(
                              fontFamily: 'manrope',
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/avatar/98b5f7643a7cc0738d6114a577b02226.webp',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 35,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/avatar/b646265166b7d2ebc05fadbe0a5fb093.webp',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 55,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/avatar/d39173de174fe958c4c12917b048f002.webp',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.black.withValues(alpha: .2),
                      borderRadius: BorderRadius.circular(AppSizes.kradiusSm),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        x.streamdata,
                        style: AppTextStyles.bodySmall.copyWith(
                          fontFamily: 'poppins',
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Iconsax.play,
                        size: AppSizes.kiconMd,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
