import "./landing_point.dart";

class Map {
  Map(this.name, this.infoUrl, this.locations);

  final String name;
  final String infoUrl;
  final List<LandingPoint> locations;
}
