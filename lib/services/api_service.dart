import 'package:mentz/data/model/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiService {

  final url = 'https://mvvvip1.defas-fgi.de/mvv/XML_STOPFINDER_REQUEST?language=de&outputFormat=RapidJSON&type_sf=any&name_sf=';

  Future<List<Location>> get(String query) async {
    List<Location> locations = [];

    try {
      return await http.get(
        Uri.parse('$url$query'), 
      ).then((http.Response resp) {
        dynamic result = convert.jsonDecode(resp.body)['locations'];
        result.forEach((dynamic json){
          locations.add(Location.fromJson(json));
        });
        
        return locations;
      });

    } catch (e) {
      rethrow;
    }
  }
}