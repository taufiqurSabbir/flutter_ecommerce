import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/image_asset.dart';


class auth_page_header extends StatelessWidget {
  const auth_page_header({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
            child: SvgPicture.asset(
              ImmageAsset.logosvg,
              width: 140,
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: 24, color: const Color(0xff4E4E4E)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(subtitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.grey)),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}