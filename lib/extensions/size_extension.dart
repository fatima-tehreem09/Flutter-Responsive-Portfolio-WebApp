import 'package:flutter/material.dart';

extension SizeExtension on num {
  SizedBox get heightBox => SizedBox(
        height: toDouble(),
      );
  SizedBox get widthBox => SizedBox(
        width: toDouble(),
      );
}

extension SliverExtension on Widget {
  Widget get sliver {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}

extension PaddingExtension on Widget {
  Widget withHorizontalPadding(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }
}

extension CenterAlignment on Widget {
  Widget get centerAlignment {
    return Center(
      child: this,
    );
  }
}

extension LeftAlignment on Widget {
  Widget get leftAlignment {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }
}

extension RightAlignment on Widget {
  Widget get rightAlignment {
    return Align(
      alignment: Alignment.topRight,
      child: this,
    );
  }
}

extension CenterLeftAlignment on Widget {
  Widget get centerLeftAlignment {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }
}
