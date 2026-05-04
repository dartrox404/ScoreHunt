import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:scorehunt/src/constants/app_colors.dart';
import 'package:scorehunt/src/constants/app_sizes.dart';
import 'package:scorehunt/src/presentation/screens/stat/pages/statspage.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          color: AppColors.white,
          'assets/intro/HBL-PSL-11-Official-Logo-Revealed-_-PSL-2026-Branding-Gets-a-Fresh-New-Look-1-removebg-preview.webp',
          height: media.height * .2,
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Statspage()),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey.withValues(alpha: .2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.kspace10),
              child: Icon(
                Iconsax.activity,
                color: AppColors.white,
                size: AppSizes.kiconXl,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
