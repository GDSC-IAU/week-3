import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  final Function(String) onLocationChanged;

  const LocationInput({super.key, required this.onLocationChanged});

  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.pink[100] ?? const Color.fromRGBO(233, 30, 99, 1).withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _locationController,
              decoration: const InputDecoration(
                hintText: 'Enter location',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 5),
          ElevatedButton(
            onPressed: () {
              widget.onLocationChanged(_locationController.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(244, 143, 177, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
