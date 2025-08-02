import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/assets_manager.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';
import 'package:kartngo/core/utils/values_manager.dart';
import 'package:kartngo/features/home/presentation/views/widgets/count_box.dart';

class ProductGridViewItem extends StatelessWidget {
  const ProductGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: ColorManager.white,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.asset(AssetsManager.testImage)),
            const SizedBox(height: AppSize.s4),
            Text(
              'Double Whopper',
              style: StylesManager.textStyle20(
                ColorManager.primaryColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: AppSize.s4),
            Row(
              children: [
                Flexible(
                  child: Text(
                    '29.57 SAR',
                    style: StylesManager.textStyle17(
                      ColorManager.lightblue,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: AppSize.s4),
                const CountBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
