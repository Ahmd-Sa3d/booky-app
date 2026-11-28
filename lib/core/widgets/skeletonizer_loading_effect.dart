import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/home_horizontal_list/horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerLoadingEffect extends StatelessWidget {
  const SkeletonizerLoadingEffect({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      effect: ShimmerEffect(
        baseColor: Colors.white60,
        begin: AlignmentGeometry.topLeft,
        end: AlignmentGeometry.bottomRight,
      ),
      ignorePointers: false,
      enabled: true,
      child: HorizontalListView(books: books),
    );
  }
}
