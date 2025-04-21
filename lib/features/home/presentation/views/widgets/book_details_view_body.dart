import 'package:books_store_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:books_store_app/sizedbox.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                h37,
                BooksAction(),
                Expanded(
                  child: h50,
                ),
                SimilarBooksSection(),
                h40,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
