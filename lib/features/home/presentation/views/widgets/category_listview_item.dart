import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';
import 'package:kartngo/core/utils/values_manager.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backGroundColor,
        borderRadius: BorderRadius.circular(AppSize.s30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
        child: Row(
          children: [
            const Icon(Icons.check),
            const SizedBox(width: AppSize.s8),
            Text(
              'افضل العروض',
              style: StylesManager.textStyle20(ColorManager.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
