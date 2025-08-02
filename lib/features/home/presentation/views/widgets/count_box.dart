import 'package:flutter/material.dart';
import 'package:kartngo/core/utils/color_manager.dart';
import 'package:kartngo/core/utils/styles_manager.dart';
import 'package:kartngo/core/utils/values_manager.dart';

class CountBox extends StatefulWidget {
  const CountBox({
    super.key,
  });

  @override
  State<CountBox> createState() => _CountBoxState();
}

class _CountBoxState extends State<CountBox> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backGroundColor,
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: decrease,
            icon: const Icon(Icons.remove),
          ),
          Text(
            '$counter',
            style: StylesManager.textStyle20(
              ColorManager.primaryColor,
            ),
          ),
          IconButton(
            onPressed: increase,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }
}
