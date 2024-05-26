import '../constants/size_constants.dart';

extension SizeExtension on num {

  double get width {
    if (this <= 0.0 || this > 1.0) {
      throw ArgumentError('Number must be between 0.0 and 1.0');
    }
    return this * SizeConstants.width;
  }

  double get height {
    if (this <= 0.0 || this > 1.0) {
      throw ArgumentError('Number must be between 0.0 and 1.0');
    }
    return this * SizeConstants.height;
  }

  double get sp {
    return SizeConstants.textScaler.scale(this as double);
  }

  /// Example: Container width 200 in design => 200.widthWithDesign
  double get widthWithDesign {
    return (this / SizeConstants.designWidth) * SizeConstants.width;
  }

  /// Example: Container height 100 in design => 100.heightWithDesign
  double get heightWithDesign {
    return (this / SizeConstants.designHeight) * SizeConstants.height;
  }

}