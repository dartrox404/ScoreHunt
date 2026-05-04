import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/data/model/story_data.dart';

class StoryRow extends StatelessWidget {
  const StoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(storylist.length, (index) {
          final x = storylist[index];
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: AppSizes.kspace12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(x.image),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 0,
                    top: 0,

                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: AppColors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(AppSizes.kspace8),
              Text(
                x.text,
                style: AppTextStyles.bodyMedium.copyWith(
                  fontFamily: 'mons',
                  color: AppColors.white,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
