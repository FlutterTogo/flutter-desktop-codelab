import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/side_menu_item.dart';
import '../models/menu_item.dart';
import '../constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'YoPro.',
                              style:
                                  Theme.of(context).textTheme.headline5!.copyWith(
                                        color: Colors.white,
                                      ),
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              'Your productivity assistant.',
                              style:
                                  Theme.of(context).textTheme.headline6!.copyWith(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ...menuItems
                              .map(
                                (item) => SideMenuItem(item: item),
                              )
                              .toList()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SvgPicture.asset(
                    'assets/designer.svg',
                    width: 140,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
