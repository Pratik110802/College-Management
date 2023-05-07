import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventsViewModel extends BaseViewModel implements Initialisable {
  late CalendarController controller;

  @override
  void initialise() {
    super.initialised;
    controller = CalendarController();
  }

  List<Map<String, String>> events = [
    {
      'title': 'Mini Project Viva',
      'date': '2023-04-26',
      'time': '9:00',
    },
    {
      'title': 'AI Viva',
      'date': '2023-04-27',
      'time': '10:00',
    },
    {
      'title': 'Maharahstra Day',
      'date': '2023-05-01',
      'time': '00:00',
    },
    {
      'title': 'Buddha Paurnima',
      'date': '2023-05-05',
      'time': '00:00',
    },
  ];
}
