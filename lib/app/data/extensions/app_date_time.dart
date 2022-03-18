import 'package:intl/intl.dart';

extension AppDateTime on DateTime {
  String toFormat_yyyy_MM_dd_hh_mm() {
    try {
      return DateFormat('yyyy/MM/dd hh:mm').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_yyyy_MM_dd() {
    try {
      return DateFormat('yyyy/MM/dd').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_dd_MM_yyyy_hh_mm() {
    try {
      return DateFormat('dd/MM/yyyy hh:mm').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_dd_MM_yyyy_hh_mm_ss() {
    try {
      return DateFormat('dd/MM/yyyy hh:mm:ss').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_dd_MM_yyyy() {
    try {
      return DateFormat('dd/MM/yyyy').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_hh_mm() {
    try {
      return DateFormat('hh:mm').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_dd_MM() {
    try {
      return DateFormat('dd/MM').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_dd() {
    try {
      return DateFormat('dd').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_MM() {
    try {
      return DateFormat('MM').format(this);
    } catch (err) {
      return "";
    }
  }

  String toFormat_yyyy() {
    try {
      return DateFormat('yyyy').format(this);
    } catch (err) {
      return "";
    }
  }

  String abbreviatedMonth(DateTime date) {
    switch (date.month) {
      case 1:
        return "JAN";
      case 2:
        return "FEV";
      case 3:
        return "MAR";
      case 4:
        return "ABR";
      case 5:
        return "MAI";
      case 6:
        return "JUN";
      case 7:
        return "JUL";
      case 8:
        return "AGO";
      case 9:
        return "SET";
      case 10:
        return "OUT";
      case 11:
        return "NOV";
      case 12:
        return "DEZ";
      default:
        return "";
    }
  }

  String monthInFull(DateTime date) {
    switch (date.month) {
      case 1:
        return "Janeiro";
      case 2:
        return "Fevereiro";
      case 3:
        return "Marco";
      case 4:
        return "Abril";
      case 5:
        return "Maio";
      case 6:
        return "Junho";
      case 7:
        return "Julho";
      case 8:
        return "Agosto";
      case 9:
        return "Setembro";
      case 10:
        return "Outubro";
      case 11:
        return "Novembro";
      case 12:
        return "Dezembro";
      default:
        return "";
    }
  }

  String formatDateInFull() {
    return '${this.day.toString()} de ${monthInFull(this)} de ${this.year.toString()}, ${toFormat_hh_mm()} ';
  }
}
