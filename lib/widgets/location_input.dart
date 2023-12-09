
import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  final Function(String) onLocationChanged;

  LocationInput({required this.onLocationChanged});

  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 350,
      
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.pink[100] ?? Colors.pink.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child:  TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                hintText: 'Enter location',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              widget.onLocationChanged(_locationController.text);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[200] ?? Colors.pinkAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Submit'
            ,style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
