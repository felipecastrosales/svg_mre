import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:svg_mre/main.dart';

void main() {
  group('SVGApp', () {
    testWidgets('Renders SVGApp', (WidgetTester tester) async {
      await tester.pumpWidget(const SVGApp());
      expect(find.byType(SVGApp), findsOneWidget);
    });

    testWidgets('Should compare asset', (WidgetTester tester) async {
      await tester.pumpWidget(const SVGApp());
      final findAsset = find.byWidgetPredicate(
        (widget) =>
            widget is SvgPicture &&
            (widget.bytesLoader as SvgAssetLoader)
                    .assetName
                    .compareTo('assets/flutter.svg') ==
                0,
      );

      expect(findAsset, findsOneWidget);
    });
  });
}
