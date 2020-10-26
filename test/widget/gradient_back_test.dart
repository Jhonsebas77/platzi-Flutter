import 'package:flutter_test/flutter_test.dart';
import 'package:platzi_trips_app/widget/gradient_back.dart';

void main() {
  testWidgets('Should render a Gradient Back ...', (tester) async {
    await tester.pumpWidget(GradientBack('Title'));
    await expectLater(
        find.byType(GradientBack), matchesGoldenFile('gradient_back.png'));
  });
}
