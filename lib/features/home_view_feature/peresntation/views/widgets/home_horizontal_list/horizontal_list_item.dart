import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'horizontal_list_item_button.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetails);
        },
        child: CustomImageContainer(
         ratio: 0.65,
          image: AppImages.bookPicture,
          widget: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: HorizontalListItemButton(),
            ),
          ),
        ),
        // child: AspectRatio(
        //   aspectRatio: .65,
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8.0),
        //       image: DecorationImage(
        //         fit: BoxFit.fill,
        //         image: AssetImage(AppImages.bookPicture),
        //       ),
        //     ),
        //     child:
        //   ),
      ),
    );
  }
}
