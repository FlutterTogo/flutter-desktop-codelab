import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

import '../constants.dart';

class TimerCard extends StatefulWidget {
  const TimerCard({Key? key}) : super(key: key);

  @override
  State<TimerCard> createState() => _TimerCardState();
}

class _TimerCardState extends State<TimerCard> {
  final CountDownController controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        primaryColor.withOpacity(0.10),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 16.0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Pomodoro',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const TextButton(
                    onPressed: null,
                    child: Text('Break'),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: NeonCircularTimer(
                      onComplete: () {
                        controller.restart();
                      },
                      width: 200,
                      controller: controller,
                      duration: 1500,
                      strokeWidth: 10,
                      isTimerTextShown: true,
                      neumorphicEffect: false,
                      strokeCap: StrokeCap.round,
                      innerFillColor: primaryColor,
                      backgroudColor: primaryColor,
                      autoStart: false,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(.10),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Set Timer',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '25',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 4.0),
                                      Text('Minute(s)'),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '0',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 4.0),
                                      Text('Second(s)'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                primaryColor.withOpacity(0.1),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  vertical: 18.0,
                                ),
                              ),
                            ),
                            onPressed: () => controller.start(),
                            child: const Text(
                              'START',
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                primaryColor,
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  vertical: 18.0,
                                ),
                              ),
                            ),
                            onPressed: () => controller.pause(),
                            child: const Text(
                              'STOP',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                primaryColor,
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  vertical: 18.0,
                                ),
                              ),
                            ),
                            onPressed: () => controller.restart(),
                            child: const Text(
                              'RESET',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
