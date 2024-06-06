import 'package:flutter/material.dart';
import 'package:sharedexperiences/src/core/util/util/color_style.dart';
import 'package:sharedexperiences/src/core/util/util/my_font_styles.dart';

/// item doubts in list
class ItemDoubts extends StatelessWidget {
  ///constructor empty
  const ItemDoubts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Card(
          elevation: 1.8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: ColorStyle.primaryColor.withOpacity(0.5),
              onTap: (){

              },
              child: SizedBox(
                width: double.infinity,
                height: 230,
                child: Column(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1500259783852-0ca9ce8a64dc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 30),
                              width: 110,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.black54,
                                  border:
                                      Border.all(color: ColorStyle.primaryColor)),
                              child: Center(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '12 me gusta',
                                      style: MyFontStyle.boldFontRoboto(
                                          size: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  onTap: () {},
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black45,
                                        border: Border.all(
                                            color: ColorStyle.primaryColor)),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      height: 60,
                      child: Center(
                        child: Text(
                          '¿Como llego a el puerto de cancun desde el aeropuerto?',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyFontStyle.regularFontRoboto(
                              color: Colors.black, size: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
