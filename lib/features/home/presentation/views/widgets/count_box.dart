import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';
import 'package:kartngo/core/utils/values_manager.dart';

class CountBox extends StatelessWidget {
  const CountBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backGroundColor,
        borderRadius: BorderRadius.circular(
          AppSize.s10,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
          Text(
            '0',
            style: StylesManager.textStyle20(
              ColorManager.primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
