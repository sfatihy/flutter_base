extension TimeExtension on DateTime {

  List<String> get months => [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  List<String> get days => [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  String get digitalTime => '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  String get digitalTimeAsAmPm => '${'${(hour > 12) ? (hour - 12) : hour}'.padLeft(2, '0')}:${'$minute'.padLeft(2, '0')} ${hour > 12 ? 'PM' : 'AM'}';
  String parsedDate ([String format = '.']) => '${day.toString().padLeft(2, '0')}$format${month.toString().padLeft(2, '0')}$format$year';
  String parsedDateTime ([String format = '.']) => '${parsedDate(format)} $digitalTime';

  String get passedDate {
    final Duration difference = DateTime.now().difference(this);
    return difference.inDays == 0 ? 'today' : difference.inDays == 1 ? 'yesterday' : difference.inDays == -1 ? 'tomorrow' : difference.inDays > 365 ? parsedDate('/') : '$day ${months[month - 1]}';
    return switch (difference) {
      Duration(inDays: 1) => 'Yesterday',
      Duration(inDays: 0) => 'Today',
      Duration(inDays: -1) => 'Tomorrow',
      Duration(inDays: int d, isNegative: false) => '$d days ago',
      Duration(inDays: int d, isNegative: true) => '${d.abs()} days later',
    };
  }

  String get passedTimeMoreDetailed {
    final Duration difference = DateTime.now().difference(this);

    if (difference.inSeconds > 0) {
      // ago
      if (difference.inSeconds < 60) {
        return '${difference.inSeconds}s';
      }
      else if (difference.inMinutes < 60) {
        return '${difference.inMinutes}m';
      }
      else if (difference.inHours < 24) {
        return '${difference.inHours}h';
      }
      else if (difference.inDays == 1) {
        return 'yesterday';
      }
      else if (difference.inDays < 30) {
        return '${difference.inDays}d';
      }
      else if (difference.inDays < 365) {
        return '${difference.inDays ~/ 30}m';
      }
      else {
        return '${difference.inDays ~/ 365}y';
      }
    }
    else if (difference.inSeconds == 0) {
      return 'now';
    }
    else {
      // later
      if (difference.inSeconds.abs() < 60) {
        return '${difference.inSeconds.abs()}s later';
      }
      else if (difference.inMinutes.abs() < 60) {
        return '${difference.inMinutes.abs()}m later';
      }
      else if (difference.inHours.abs() < 24) {
        return '${difference.inHours.abs()}h later';
      }
      else if (difference.inDays.abs() == 1) {
        return 'tomorrow';
      }
      else if (difference.inDays.abs() < 30) {
        return '${difference.inDays.abs()}d later';
      }
      else if (difference.inDays.abs() < 365) {
        return '${difference.inDays.abs() ~/ 30}m later';
      }
      else {
        return '${difference.inDays.abs() ~/ 365}y later';
      }
    }
  }

}