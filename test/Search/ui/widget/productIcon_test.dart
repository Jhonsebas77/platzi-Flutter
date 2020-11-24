import 'package:flutter_test/flutter_test.dart';
import 'package:platzi_trips_app/Search/ui/widget/productIcon.dart';

void main() {
  String product = 'HOTEL';
  testWidgets('Should render a ProductIcon ...', (tester) async {
    await tester.pumpWidget(ProductIcon(product: product));
    await expectLater(
        find.byType(ProductIcon), matchesGoldenFile('productIcon_test.png'));
  });
}
