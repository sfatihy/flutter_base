import 'package:flutter/material.dart';

import '../product/constants/padding_constants.dart';
import '../product/constants/radius_constants.dart';
import '../product/constants/size_constants.dart';

import '../product/extensions/size_extension.dart';

class CustomModalBottomSheet extends StatelessWidget {

  final Widget widget;

  const CustomModalBottomSheet(
    {
      required this.widget,
      super.key
    }
  );

  @override
  Widget build(BuildContext context) {

    double initialSize = 0.4;
    double maxSize = 0.65;
    double minSize = 0.35;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pop(context);
      },
      child: GestureDetector(
        onTap: () {

        },
        child: DraggableScrollableSheet(
          initialChildSize: initialSize,
          minChildSize: minSize,
          maxChildSize: maxSize,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: PaddingConstants.allMedium,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 0.125.width,
                        height: 0.005.height,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: RadiusConstants.circle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: SizeConstants.medium,
                    ),
                    widget
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

showModalBottomSheetWidget (
  {
    required BuildContext context,
    required Widget widget
  }
  ) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return CustomModalBottomSheet(
        widget: widget,
      );
    }
  );
}