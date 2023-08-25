import 'package:beard_friends_project/utils/app_colors/apps_colors.dart';
import 'package:beard_friends_project/utils/app_images/png_images/all_png_images.dart';
import 'package:beard_friends_project/view/barber_shop/barber_shop.dart';
import 'package:beard_friends_project/view/beard_coins/beard_coins.dart';
import 'package:beard_friends_project/view/beard_contest/beard_contest.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List screens = [
    const BeardCoinsScreen(),
    BarberShopScreen(),
    BeardContestScreen(),
    Container(
      color: AppColors.primaryColor,
    ),
    Container(
      color: AppColors.primaryColor,
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          selectedItemColor: AppColors.textColorWhite,
          unselectedItemColor: AppColors.textFormBgColor,
          selectedLabelStyle:GoogleFonts.nunito(),
          unselectedLabelStyle: GoogleFonts.nunito(),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: AppColors.primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                  const AssetImage(
                    AppPngImages.navImg1,
                  ),
                  color: currentIndex == 0
                      ? AppColors.textColorWhite
                      : AppColors.textFormBgColor),
              label: 'Beard Coins',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(const AssetImage(AppPngImages.navImg2),
                  color: currentIndex == 1
                      ? AppColors.textColorWhite
                      : AppColors.textFormBgColor),
              label: 'BarbarShops',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(const AssetImage(AppPngImages.navImg3),
                  color: currentIndex == 2
                      ? AppColors.textColorWhite
                      : AppColors.textFormBgColor),
              label: 'Contest',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(const AssetImage(AppPngImages.navImg4),
                  color: currentIndex == 3
                      ? AppColors.textColorWhite
                      : AppColors.textFormBgColor),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(const AssetImage(AppPngImages.navImg5),
                  color: currentIndex == 4
                      ? AppColors.textColorWhite
                      : AppColors.textFormBgColor),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
