import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class DatePickerDialog extends StatefulWidget {
  final DateTime initialDate;

  const DatePickerDialog({
    super.key,
    required this.initialDate,
  });

  @override
  State<DatePickerDialog> createState() => _DatePickerDialogState();
}

class _DatePickerDialogState extends State<DatePickerDialog> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  Future<void> _showDatePickerDialog() async {
    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarType: CalendarDatePicker2Type.single,
      firstDate: DateTime(2020, 1, 1),
      lastDate: DateTime(2030, 12, 31),
    );

    final results = await showCalendarDatePicker2Dialog(
      context: context,
      config: config,
      dialogSize: const Size(320, 400),
      value: [_selectedDate],
      borderRadius: BorderRadius.circular(16),
    );

    if (results != null && results.isNotEmpty) {
      setState(() {
        _selectedDate = results.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final displayDate = _selectedDate != null
        ? "${_selectedDate!.year}-${_selectedDate!.month}-${_selectedDate!.day}"
        : "Pick a Date";

    return ElevatedButton(
      onPressed: _showDatePickerDialog,
      child: Text(displayDate),
    );
  }
}
