class Location {
  
  final String id;
  final String name;
  final String? disassembledName;
  final String type;
  final int matchQuality;
  final bool isBest;
  final bool? isGlobalId;
  final List<dynamic> coord;
  final List<dynamic>? productClasses;
  final Map<String, dynamic>? properties;
  final dynamic parent;

  Location({
    required this.id,
    required this.name,
    required this.disassembledName,
    required this.type,
    required this.matchQuality,
    required this.isBest,
    required this.isGlobalId,
    required this.coord,
    required this.productClasses,
    required this.properties,
    required this.parent,
  });

  Location.fromJson(dynamic json)
    : id = json['id'],
    name = json['name'],
    disassembledName = json['disassembledName'],
    type = json['type'],
    matchQuality = json['matchQuality'],
    isBest = json['isBest'],
    isGlobalId = json['isGlobalId'],
    coord = json['coord'],
    productClasses = json['productClasses'],
    properties = json['properties'],
    parent = json['parent'];
}