import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';

class DateDropdown extends StatefulWidget {
  final DateTime initialDate;
  final String label;
  final ValueChanged<DateTime?> onChanged;
  final bool disablePastDates;

  const DateDropdown({
    super.key,
    required this.initialDate,
    required this.label,
    required this.onChanged,
    this.disablePastDates = false,
  });

  @override
  State<DateDropdown> createState() => _DateDropdownState();
}

class _DateDropdownState extends State<DateDropdown> {
  DateTime? _selectedDate;
  final DateFormat _formatter = DateFormat('MMM d, yyyy');

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  Future<void> _showDateDialog() async {
    final now = DateTime.now();
    final firstDate = widget.disablePastDates
        ? DateTime(now.year, now.month, now.day) // today onwards
        : DateTime(2000, 1, 1);

    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarType: CalendarDatePicker2Type.single,
      firstDate: firstDate,
      lastDate: DateTime(2100, 12, 31),
    );

    final results = await showCalendarDatePicker2Dialog(
      context: context,
      config: config,
      dialogSize: const Size(320, 400),
      value: [_selectedDate],
      borderRadius: BorderRadius.circular(12),
    );

    if (results != null && results.isNotEmpty) {
      setState(() => _selectedDate = results.first);
      widget.onChanged(_selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final text = _selectedDate != null ? _formatter.format(_selectedDate!) : "Select Date";

    return GestureDetector(
      onTap: _showDateDialog,
      child: AbsorbPointer(
        child: DropdownButtonFormField<String>(
          value: text,
          items: [
            DropdownMenuItem(
              value: text,
              child: Text(
                text,
              ),
            ),
          ],
          onChanged: (_) {},
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
