import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

import '../../core/util/util/router_settings.dart';

/// item home widget cards
class ItemHomeWidget extends StatelessWidget {
  /// constructor item home widget cards
  const ItemHomeWidget(
      this.alignment, this.pictureWidth, this.pictureHeight, this.urlImage,
      {Key? key})
      : super(key: key);

  /// constructor item home widget cards
  final AlignmentGeometry alignment;

  /// constructor item home widget cards
  final double pictureWidth;

  /// constructor item home widget cards
  final double pictureHeight;

  /// image url
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutersSettings.detailTripRouter);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0.0, 2.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          width: pictureWidth,
          height: pictureHeight,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.network(this.urlImage, fit: BoxFit.cover)),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.black38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                'Cancun',
                                style: MyFontStyle.regularFont(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '¿Cuál es la mejor forma para llegar '
                                  'a isla mujeres desde Cancun?',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: MyFontStyle.regularFontRoboto(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
