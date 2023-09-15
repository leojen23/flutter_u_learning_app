import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_app/common/widgets/text_widgets.dart';
import 'package:ulearning_app/pages/notifiers/welcome_notifier.dart';
import 'package:ulearning_app/pages/welcome/widgets.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    appOnboardingPage(_controller,
                        imagePath: 'assets/images/reading.png',
                        title: 'First See Learning',
                        subtitle: 'Forget about paper. Now learning all in one',
                        index: 1),
                    appOnboardingPage(_controller,
                        imagePath: 'assets/images/man.png',
                        title: 'Connect with Everyone',
                        subtitle:
                            'Keep in touch with you teachers and friends. Stay connected !',
                        index: 2),
                    appOnboardingPage(_controller,
                        imagePath: 'assets/images/boy.png',
                        title: 'Fascinating Learning',
                        subtitle:
                            'Anywhere, anytime. Study wherever you want !',
                        index: 3),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(24.0, 6.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Image.asset('assets/images/reading.png'),
//           Image.asset('assets/images/boy.png'),
