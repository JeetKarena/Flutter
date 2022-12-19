/* Write a dart codeto create  common date format method in Util Class and access  in different classes (with and without inheritance) */
class Util {
  String getFormate({required String format}) {
    String? date;
    if (format.contains("dd/MM/yyyy")) {
      date =
          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
      return date;
    } else if (format.contains("dd-MM-yyyy")) {
      date =
          "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
      return date;
    } else if (format.contains("dd-MMM-yyyy")) {
      date =
          "${DateTime.now().day}-${_getMonth(month: DateTime.now().month)}-${DateTime.now().year}";
      return date;
    } else if (format.contains("dd-MM-yy")) {
      date =
          "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year.toString().substring(1)}";
      return date;
    } else if (format.contains("dd MMM yyyy")) {
      date =
          "${DateTime.now().day} ${_getMonth(month: DateTime.now().month)} ${DateTime.now().year}";
      return date;
    }
    return "";
  }

  String _getMonth({required int month}) {
    switch (month) {
      case 1:
        return "january";
      case 2:
        return "february";
      case 3:
        return "march";
      case 4:
        return "april";
      case 5:
        return "may";
      case 6:
        return "june";
      case 7:
        return "july";
      case 8:
        return "august";
      case 9:
        return "september";
      case 10:
        return "october";
      case 11:
        return "november";
      case 12:
        return "december";
    }
    return "Enter Valid Month";
  }
}
