import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:platzi_trips_app/Search/ui/widget/TripCard.dart';

void main() {
  testWidgets('Should render a TripCard ...', (tester) async {
    String destination = 'Nova Zelândia';
    String initDate = '14 de set';
    String finalDate = '17 de set';
    Function function = () => {};
    String pathImage =
        'https://s3.amazonaws.com/cvc-bancodeimagens/destinos/auckland-centro-visao-do-mar-nova-zelandia-1113858134.jpg';
    List<String> productList = ['HOTEL', 'HOTEL', 'FLIGHT'];
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(
        TripCard(
          destination: destination,
          initDate: initDate,
          finalDate: finalDate,
          productList: productList,
          function: function,
          pathImage: pathImage,
        ),
      );
      await expectLater(
          find.byType(TripCard), matchesGoldenFile('tripCard_test.png'));
    });
  });
}
