import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/constants/app_styles.dart';
import 'package:scorehunt/src/data/model/stat_model.dart';
import 'package:scorehunt/src/presentation/screens/stat/widgets/center_buttons.dart';
import 'package:scorehunt/src/presentation/screens/stat/widgets/header_section.dart';
import 'package:scorehunt/src/presentation/screens/stat/widgets/scroeboard_data.dart';

class Statspage extends StatelessWidget {
  const Statspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/bg/6fa3c5212c751f4928b02ed319495558.webp',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderSection(),
            Gap(AppSizes.kspace20),
            CenterButtons(),
            Gap(AppSizes.kspace20),
            ScroeboardData(
              batter: "BATTER",
              R: 'R',
              B: 'B',
              fors: '4s',
              sixes: '6s',
              sr: 'SR',
            ),
            Gap(AppSizes.kspace8),
            SizedBox(
              width: double.infinity,
              child: Divider(color: AppColors.grey.withValues(alpha: .3)),
            ),
            Gap(AppSizes.kspace8),
            ScroeboardData(
              batter: "Baber Azam",
              R: '35',
              B: '12',
              fors: '3',
              sixes: '5',
              sr: '175.0',
            ),
            Gap(AppSizes.kspace8),
            ScroeboardData(
              batter: "Shadab Khan",
              R: '55',
              B: '30',
              fors: '3',
              sixes: '2',
              sr: '180.0',
            ),
            Gap(AppSizes.kspace8),
            SizedBox(
              width: double.infinity,
              child: Divider(color: AppColors.grey.withValues(alpha: .3)),
            ),
            Gap(AppSizes.kspace8),
            ScroeboardData(
              batter: 'Mark Lubshencs',
              R: '100',
              B: '50',
              fors: '5',
              sixes: '4',
              sr: "280.5",
            ),
            Gap(AppSizes.kspace8),
            ScroeboardData(
              batter: 'Mitchel Starc',
              R: '12',
              B: '2.1',
              fors: '0',
              sixes: '2',
              sr: "80.50",
            ),
            Gap(AppSizes.kspace8),
            SizedBox(
              width: double.infinity,
              child: Divider(color: AppColors.grey.withValues(alpha: .3)),
            ),
            Gap(AppSizes.kspace16),
            Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.kspace10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  overdetails.length,
                  (index) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey.withValues(alpha: .2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.kspace12),
                      child: Text(
                        overdetails[index],
                        style: AppTextStyles.bodyLarge.copyWith(
                          fontFamily: 'poppins',
                          color: AppColors.white,
                        ),
                      ),
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
