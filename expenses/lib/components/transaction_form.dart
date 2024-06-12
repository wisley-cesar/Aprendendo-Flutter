import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'adaptative/adaptative_button.dart';
import 'adaptative/adaptative_text_field.dart';
import 'adaptative/adaptative_date_piker.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double, DateTime) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _titleControler = TextEditingController();
  final _valueControler = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  _submitFrom() {
    final title = _titleControler.text;
    //  final value = double.parse(_valueControler.text) ?? 0.0;
    final valueString = _valueControler.text.replaceAll(',', '.');
    double value = 0.0;
    try {
      value = double.parse(valueString);
    } catch (e) {
      // Se não conseguir converter para double, define o valor como 0.0
      value = 0.0;
    }

    if (title.isEmpty || value <= 0 || _selectedDate == null) {
      return;
    }
    widget.onSubmit(title, value, _selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              AdaptativeTextField(
                label: 'Título',
                controller: _titleControler,
                onSubmitFrom: _submitFrom,
              ),
              AdaptativeTextField(
                label: 'Valor (R\$)',
                controller: _valueControler,
                onSubmitFrom: _submitFrom,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              AdaptativeDatePiker(
                  selectedDate: _selectedDate,
                  onDateChanged: (newDate) {
                    setState(() {
                      _selectedDate = newDate;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AdapativeButton(
                    size: 20,
                    color: Colors.purple,
                    label: 'Nova Transação',
                    onPressed: _submitFrom,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
