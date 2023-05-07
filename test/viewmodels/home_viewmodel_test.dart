import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:app/app/app.bottomsheets.dart';
import 'package:app/app/app.locator.dart';
import 'package:app/ui/common/app_strings.dart';
import 'package:app/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel _getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });

  group('showBottomSheet -', () {
    test('When called, should show custom bottom sheet using notice variant',
        () {
      final bottomSheetService = getAndRegisterBottomSheetService();

      final model = _getModel();

      verify(bottomSheetService.showCustomSheet(
        variant: BottomSheetType.notice,
        title: ksHomeBottomSheetTitle,
        description: ksHomeBottomSheetDescription,
      ));
    });
  });
}
