import 'package:flutter/cupertino.dart';

import 'horizontal_list_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(itemCount: 5,padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HorizontalListItem(),
      ),
    );
  }
}
