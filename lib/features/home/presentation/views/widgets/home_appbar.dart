import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'التصنيفات',
        style: StylesManager.textStyle24(ColorManager.primaryColor),
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
