import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_styles.dart';
import 'package:booky_app/core/widgets/custom_image_container.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/book_details/book_details_app_bar.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/book_details/similar_books_list.dart';
import 'package:flutter/material.dart';

import 'book_details_info.dart';
import 'boook_details_buttons.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BookDetailsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 107),
              child: CustomImageContainer(
                image: AppImages.bookPicture,
                ratio: 162 / 243,
              ),
            ),
            SizedBox(height: 40),
            const BookDetailsInfo(),
            SizedBox(height: 40),
            BookDetailsButtons(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text('You can also like',style: AppStyles.montserrat18SemiBold(context),),
            ),
            SizedBox(height: 16,),
            SimilarBooksList(),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
