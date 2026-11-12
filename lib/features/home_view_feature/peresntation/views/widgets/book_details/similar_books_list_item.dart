import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/custom_image_container.dart';

class SimilarBookListItem extends StatelessWidget {
  const SimilarBookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: const CustomImageContainer(
        image: AppImages.bookPicture,
        ratio: 70 / 110,
      ),
    );
  }
}
