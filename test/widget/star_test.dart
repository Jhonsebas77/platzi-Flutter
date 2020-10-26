import 'package:flutter_test/flutter_test.dart';
import './../../lib/widget/star.dart';

void main() {
  testWidgets('Should render a Star with size 20 and kind Full',
      (tester) async {
    await tester.pumpWidget(Star(20, "full"));
    await expectLater(find.byType(Star), matchesGoldenFile('star_full.png'));
  });
  testWidgets('Should render a Star with size 20 and kind empty',
      (tester) async {
    await tester.pumpWidget(Star(20, "empty"));
    await expectLater(find.byType(Star), matchesGoldenFile('star_empty.png'));
  });
  testWidgets('Should render a Star with size 20 and kind half',
      (tester) async {
    await tester.pumpWidget(Star(20, "half"));
    await expectLater(find.byType(Star), matchesGoldenFile('star_half.png'));
  });
}
