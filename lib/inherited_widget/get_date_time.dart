class GetDateTime {
  String? dateTime;
  Future<String> getCurrentDateTime() {
    return Future.delayed(
      Duration(seconds: 1),
      () => DateTime.now().toIso8601String(),
    ).then((value) {
      dateTime = value;
      return value;
    });
  }
}
