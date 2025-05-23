import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../sizedbox.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        w63,
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        w5,
        Opacity(
          opacity: 0.5,
          child: Text(
            '(254)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
