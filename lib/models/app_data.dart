class AppData {
  // This property will store the prayer dates.
  static final List<DateTime> prayerDates = [];

  // This property will store the fasting days in the month.
  static final List<DateTime> fastingDays = [];

  // This property will track the cycle dates.
  static final List<DateTime> cycleDates = [];

  // Method to check if a given date is a prayer date.
  static bool isPrayerDate(DateTime date) {
    return prayerDates.contains(date);
  }

  // Method to check if a given date is a fasting day.
  static bool isFastingDay(DateTime date) {
    return fastingDays.contains(date);
  }

  // Method to track cycle dates.
  static void addCycleDate(DateTime date) {
    cycleDates.add(date);
  }

  // Method to remove cycle date.
  static void removeCycleDate(DateTime date) {
    cycleDates.remove(date);
  }
}