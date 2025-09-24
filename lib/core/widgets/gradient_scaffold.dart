import 'package:flutter/material.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';

class GradientScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? bottomNavigationBar;
  final List<Color>? gradientColors;
  final AlignmentGeometry? gradientBegin;
  final AlignmentGeometry? gradientEnd;
  final String? backgroundImage;
  final double? imageTop;
  final double? imageRight;
  final double? imageLeft;
  final double? imageBottom;
  final double? imageWidth;
  final double? imageHeight;
  final String? secondBackgroundImage;
  final double? secondImageTop;
  final double? secondImageRight;
  final double? secondImageLeft;
  final double? secondImageBottom;
  final double? secondImageWidth;
  final double? secondImageHeight;
  final List<Color> defaultGradientStart;

  const GradientScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.defaultGradientStart = const [AppColors.primary, Colors.white],
    this.floatingActionButton,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.gradientColors,
    this.gradientBegin,
    this.gradientEnd,
    this.backgroundImage,
    this.imageTop,
    this.imageRight,
    this.imageLeft,
    this.imageBottom,
    this.imageWidth,
    this.imageHeight,
    this.secondBackgroundImage,
    this.secondImageTop,
    this.secondImageRight,
    this.secondImageLeft,
    this.secondImageBottom,
    this.secondImageWidth,
    this.secondImageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: gradientBegin ?? Alignment.topCenter,
                end: gradientEnd ?? Alignment.bottomCenter,
                colors: defaultGradientStart,
              ),
            ),
          ),

          if (backgroundImage != null)
            Positioned(
              top: imageTop,
              right: imageRight,
              left: imageLeft,
              bottom: imageBottom,
              child: Container(
                width: imageWidth ?? 300,
                height: imageHeight ?? 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImage!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

          // Second background image
          if (secondBackgroundImage != null)
            Positioned(
              top: secondImageTop,
              right: secondImageRight,
              left: secondImageLeft,
              bottom: secondImageBottom,
              child: Container(
                width: secondImageWidth ?? 300,
                height: secondImageHeight ?? 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(secondBackgroundImage!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: body,
          ),
        ],
      ),
    );
  }
}
