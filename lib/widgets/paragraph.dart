import 'package:contentful_rich_text/types/types.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Paragraph extends StatelessWidget {
  final dynamic node;
  final Next next;

  Paragraph(this.node, this.next);

  @override
  Widget build(BuildContext context) {
    final styling = context.read<StylingOptions?>();

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            children: next(node['content']),
          ),
        ],
      ),
      textAlign: styling?.paragraphOptions?.textAlign,
    );
  }
}
