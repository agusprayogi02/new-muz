import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/common/extensions/widget_extension.dart';
import 'package:next_starter/common/utils/date_utils.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/theme/theme.dart';

class NewsItemCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? sourceName;
  final String? publishedAt;
  final bool isVerified;
  final String? sourceLogoUrl;
  final VoidCallback onTap;

  const NewsItemCard({
    super.key,
    this.imageUrl,
    this.title,
    this.sourceName,
    this.publishedAt,
    this.isVerified = false,
    this.sourceLogoUrl,
    required this.onTap,
  });

  static Widget loading() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWithLoader(
          imageUrl: '',
          isBG: true,
          size: 80,
          fit: BoxFit.cover,
          radius: 12,
        ).shimmer(),
        12.horizontalSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                maxLines: 2,
                style: AppStyles.text14PxSemiBold.copyWith(color: ColorTheme.neutral[400]),
                overflow: TextOverflow.ellipsis,
              ).shimmer(isText: true),
              8.verticalSpace,
              Text('Lorem ipsum dolor sit amet').shimmer(isText: true),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWithLoader(
            imageUrl: imageUrl ?? '',
            size: 80,
            fit: BoxFit.cover,
            radius: 12,
          ),
          12.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '-',
                  style: AppStyles.text14PxSemiBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                12.verticalSpace,
                Row(
                  children: [
                    if (sourceLogoUrl != null && sourceLogoUrl!.isNotEmpty)
                      Image.network(sourceLogoUrl!, width: 20, height: 20),
                    if (sourceLogoUrl != null && sourceLogoUrl!.isNotEmpty) 6.horizontalSpace,
                    Text(
                      sourceName ?? '-',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    if (isVerified) ...[
                      4.horizontalSpace,
                      Icon(Icons.verified, color: Colors.blue, size: 18),
                    ],
                    Spacer(),
                    Text(
                      DateCommonUtils.formatDate(publishedAt ?? ''),
                      style:
                          Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
