import 'package:books_store_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../sizedbox.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          CustomSearchTextField(),
          h16,
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          h16,
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
