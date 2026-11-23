import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/widgets/custom_image_container.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'horizontal_list_item_button.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key, required this.books});

  final BookEntity books;

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
          image: books.image ?? AppImages.noImageFoud,
          widget: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: HorizontalListItemButton(),
            ),
          ),
        ),
      ),
    );
  }
}
