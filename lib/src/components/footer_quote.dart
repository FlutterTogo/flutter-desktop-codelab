import 'package:flutter/material.dart';

class FooterQuote extends StatelessWidget {
  const FooterQuote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: const AssetImage(
              'assets/green-leave-3.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.96),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '17.50',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      'August 9, 2020',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                    )
                  ],
                ),
              ),
              const VerticalDivider(color: Colors.white),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '"Don\'t be intimidated by what you don\'t know.'
                        'That can be your greatest strength and ensure '
                        'that do things differently from everyone else."',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '- Sara Blakely',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
