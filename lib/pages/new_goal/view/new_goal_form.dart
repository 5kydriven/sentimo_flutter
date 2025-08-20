import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/models.dart';
import '../../../widgets/widgets.dart';
import '../bloc/bloc.dart';

class NewGoalForm extends StatelessWidget {
  const NewGoalForm({super.key});

  String? _nameError(BuildContext context, NewGoalState state) {
    switch (state.name.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  String? _targetAmountError(BuildContext context, NewGoalState state) {
    switch (state.targetAmount.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  String? _savedAlreadyError(BuildContext context, NewGoalState state) {
    switch (state.savedAlready.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  String? _noteError(BuildContext context, NewGoalState state) {
    switch (state.note.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
    final bloc = context.read<NewGoalBloc>();

    return BlocBuilder<NewGoalBloc, NewGoalState>(
      builder: (context, state) {
        return Column(
          spacing: 8,
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (value) => bloc.add(
                NewGoalNameChanged(
                  name: value,
                ),
              ),
              decoration: InputDecoration(
                labelText: 'Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: labelStyle,
                errorText: _nameError(context, state),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              initialValue: state.targetAmount.value,
              onChanged: (value) => bloc.add(
                NewGoalTargetAmountChanged(
                  targetAmount: value,
                ),
              ),
              decoration: InputDecoration(
                labelText: 'Target amount',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: labelStyle,
                errorText: _targetAmountError(context, state),
              ),
            ),
            TextFormField(
              initialValue: state.savedAlready.value,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              onChanged: (value) => bloc.add(
                NewGoalSavedAlreadyChanged(
                  savedAlready: value,
                ),
              ),
              decoration: InputDecoration(
                labelText: 'Saved already',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: labelStyle,
                errorText: _savedAlreadyError(context, state),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Note',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: labelStyle,
                errorText: _noteError(context, state),
              ),
              onChanged: (value) => bloc.add(
                NewGoalNoteChanged(
                  note: value,
                ),
              ),
            ),
            DateDropdown(
              initialDate: DateTime.now(),
              label: 'Date',
              onChanged: (date) {},
            ),
          ],
        );
      },
    );
  }
}
