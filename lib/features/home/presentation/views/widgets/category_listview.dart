import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/values_manager.dart';
import 'package:kartngo/features/home/presentation/views/widgets/category_listview_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s48,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p10,
            ),
            child: GestureDetector(
              onTap: () {},
              child: const CategoryListViewItem(),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
