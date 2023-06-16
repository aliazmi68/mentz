import 'package:flutter/material.dart';
import 'package:mentz/data/model/location.dart';

class LocationListItem extends StatelessWidget{
  final Location location;
  const LocationListItem({super.key, required this.location});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location.name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Type: ', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: location.type, 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Coordinates: ', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: '${location.coord[0]},${location.coord[1]}', 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Is best route: ', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: location.isBest.toString(), 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Match Quality: ', 
                    style: TextStyle(
                      color: Colors.black
                    )
                  ),
                  TextSpan(
                    text: location.matchQuality.toString(), 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}