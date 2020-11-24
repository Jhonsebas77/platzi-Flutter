import 'package:flutter_test/flutter_test.dart';
import 'package:platzi_trips_app/Search/ui/widget/itemCard.dart';

void main() {
  testWidgets('Should render a itemCard ...', (tester) async {
    String destination = 'Nova Zelândia';
    String initDate = '14 de set';
    String finalDate = '17 de set';
    List<String> productList = ['HOTEL', 'HOTEL', 'FLIGHT'];
    await tester.pumpWidget(
      ItemCard(
        destination: destination,
        initDate: initDate,
        finalDate: finalDate,
        productList: productList,
      ),
    );
    await expectLater(
        find.byType(ItemCard), matchesGoldenFile('itemCard_test.png'));
  });
}
