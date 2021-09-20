import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneralHelper {
  /// Returns height dimen as a proportional value of available content view.
  static double getProportionalContentHeight(
      MediaQueryData mediaQuery, AppBar appBar, double aspectRatio) {
    return (mediaQuery.size.height -
            appBar.preferredSize.height -
            mediaQuery.padding.top) *
        aspectRatio;
  }
}
