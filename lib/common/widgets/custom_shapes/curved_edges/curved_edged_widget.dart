
import 'package:flutter/material.dart';
import 'package:uza_/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class UzaCurvedWidget extends StatelessWidget {
  const UzaCurvedWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(    // To be used as a profile image
      clipper: Uza_CustomCurvedEdges(),
      child: child,
    );
  }
}

