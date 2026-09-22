import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State {
  double _ratingValue = 50.0;
  bool _isActive = false;
  String? _selectedGenre;
  DateTime? _selectedDate;

  Future _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 2 – Input Controls'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Rating (Slider)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _ratingValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _ratingValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _ratingValue = value;
                });
              },
            ),
            Text('Current value: ${_ratingValue.round()}'),
            const SizedBox(height: 24),

            const Text(
              'Active (Switch)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Is movie active?', style: TextStyle(fontSize: 16)),
                Switch(
                  value: _isActive,
                  onChanged: (bool value) {
                    setState(() {
                      _isActive = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),

            const Text(
              'Genre (Radio Group)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            RadioGroup(
              groupValue: _selectedGenre,
              onChanged: (String? value) {
                setState(() {
                  _selectedGenre = value;
                });
              },
              child: Column(
                children: const [
                  RadioListTile(
                    title: Text('Action'),
                    value: 'Action',
                  ),
                  RadioListTile(
                    title: Text('Comedy'),
                    value: 'Comedy',
                  ),
                ],
              ),
            ),
            Text('Selected genre: ${_selectedGenre ?? "None"}'),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Text('Open Date Picker'),
              ),
            ),
            if (_selectedDate != null) ...[
              const SizedBox(height: 10),
              Text(
                'Selected Date: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ],
        ),
      ),
    );
  }
}