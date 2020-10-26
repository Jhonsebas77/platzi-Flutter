import 'package:flutter_test/flutter_test.dart';
import './../../lib/widget/review.dart';

void main() {
  String pathImage = "src/Assets/Images/photo_jsob.png";
  String nameUser = 'Sebastian Otalora';
  String details = '1 Review 5 photos';
  String comment = 'There is a Amazing Place Here';
  testWidgets('Should render a Review ...', (tester) async {
    await tester.pumpWidget(Review(pathImage, nameUser, details, comment));
    await expectLater(
        find.byType(Review), matchesGoldenFile('review_test.png'));
  });
}
