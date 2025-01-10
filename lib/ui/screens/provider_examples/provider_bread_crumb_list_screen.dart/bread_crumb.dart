import 'package:uuid/uuid.dart';

class BreadCrumb {
  bool _isAcive;
  final String name;
  final String uuid;

  BreadCrumb({
    required bool isAcive,
    required this.name,
  })  : _isAcive = isAcive,
        uuid = Uuid().v4();

  bool get isActive => _isAcive;

  void activate() {
    _isAcive = true;
  }

  @override
  bool operator ==(covariant BreadCrumb other) => uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;

  String get title => name + (isActive ? " > " : "");
}
