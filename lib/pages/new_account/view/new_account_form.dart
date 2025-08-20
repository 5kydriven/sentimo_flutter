import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentimo_flutter/extensions/extensions.dart';
import 'package:sentimo_flutter/models/account/account.dart';

import '../../../models/models.dart';
import '../bloc/bloc.dart';

class NewAccountForm extends StatelessWidget {
  const NewAccountForm({super.key});

  String? _accountNameError(BuildContext context, NewAccountState state) {
    switch (state.accountName.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  String? _bankAccountNumberError(BuildContext context, NewAccountState state) {
    switch (state.bankAccountNumber.errorType) {
      case ErrorType.empty:
        return 'Field can\'t be empty';
      default:
        return null;
    }
  }

  String? _initialValueError(BuildContext context, NewAccountState state) {
    switch (state.initialValue.errorType) {
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
    final bloc = context.read<NewAccountBloc>();

    return BlocBuilder<NewAccountBloc, NewAccountState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            spacing: 16,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Account Name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: labelStyle,
                  errorText: _accountNameError(context, state),
                ),
                onChanged: (value) => bloc.add(
                  NewAccountAccountNameChanged(
                    accountName: value,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Bank account number',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: labelStyle,
                  errorText: _bankAccountNumberError(context, state),
                ),
                onChanged: (value) => bloc.add(
                  NewAccountBankAccountNumberChanged(
                    bankAccountNumber: value,
                  ),
                ),
              ),
              DropdownButtonFormField(
                value: state.type,
                decoration: const InputDecoration(
                  labelText: 'Type',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                items: AccountType.values
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.label),
                      ),
                    )
                    .toList(),
                onChanged: (value) {},
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                initialValue: state.initialValue.value,
                decoration: InputDecoration(
                  labelText: 'Initial value',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: labelStyle,
                  errorText: _initialValueError(context, state),
                ),
                onChanged: (value) => bloc.add(
                  NewAccountInitialValueChanged(
                    initialValue: value,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
