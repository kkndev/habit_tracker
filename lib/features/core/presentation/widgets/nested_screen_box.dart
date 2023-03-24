import 'package:flutter/material.dart';

class NestedScreenBox extends StatelessWidget {
  const NestedScreenBox({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    // var appColors = Theme.of(context).extension<AppColors>()!;
    // var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SafeArea(
          child: Padding(
            padding: padding ?? const EdgeInsets.all(20),
            child: child,
          ),
        ),
      ),
    );
  }
}
