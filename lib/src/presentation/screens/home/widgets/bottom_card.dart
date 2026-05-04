import 'package:flutter/material.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/data/model/trending_data.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(trendingls.length, (index) {
          final x = trendingls[index];
          return Container(
            margin: const EdgeInsets.only(right: AppSizes.kspace10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(x.image),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.grey.withValues(alpha: .2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_outward,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    x.text,
                    style: AppTextStyles.bodyMedium.copyWith(
                      fontFamily: 'poppins',
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
