import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/values_manager.dart';
import 'package:kartngo/features/home/presentation/views/widgets/category_listview.dart';
import 'package:kartngo/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:kartngo/features/home/presentation/views/widgets/product_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
        child: Column(
          children: [
            SizedBox(height: AppSize.s10),
            CategoryListView(),
            SizedBox(height: AppSize.s10),
            ProductGridView(),
          ],
        ),
      ),
    );
  }
}
