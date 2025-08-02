import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/values_manager.dart';
import 'package:kartngo/features/home/presentation/views/widgets/product_gridview_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSize.s8,
          crossAxisSpacing: AppSize.s8,
          childAspectRatio: 1.3 / 2,
        ),
        itemBuilder: (context, index) {
          return const ProductGridViewItem();
        },
        itemCount: 15,
      ),
    );
  }
}
