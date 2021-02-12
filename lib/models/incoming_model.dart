class IncomingModel {
  final String description;
  final double value;
  final DateTime date;

  IncomingModel({this.description, this.value, this.date});

  static List<IncomingModel> getIncomings() {
    // get all incomings for this user
  }
}
