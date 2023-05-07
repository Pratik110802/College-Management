import 'package:app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:app/ui/views/home/home_view.dart';
import 'package:app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:app/ui/views/wifiscan/wifiscan_view.dart';
import 'package:app/ui/views/signin/signin_view.dart';
import 'package:app/ui/views/signup/signup_view.dart';
import 'package:app/ui/views/signinselect/signinselect_view.dart';
import 'package:app/ui/views/mainscreen/mainscreen_view.dart';
import 'package:app/ui/views/events/events_view.dart';
import 'package:app/ui/views/class/class_view.dart';
import 'package:app/ui/views/profile/profile_view.dart';
import 'package:app/ui/dialogs/timetable/timetable_dialog.dart';
import 'package:app/ui/dialogs/attendance/attendance_dialog.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: WifiscanView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: SigninselectView),
    MaterialRoute(page: MainscreenView),
    MaterialRoute(page: EventsView),
    MaterialRoute(page: ClassView),
    MaterialRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: TimetableDialog),
    StackedDialog(classType: AttendanceDialog),
// @stacked-dialog
  ],
)
class App {}
