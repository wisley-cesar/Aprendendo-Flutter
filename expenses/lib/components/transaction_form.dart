import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2023),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _titleControler,
              onSubmitted: (_) => _submitFrom(),
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: _valueControler,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitFrom(),
              decoration: const InputDecoration(
                labelText: 'valor (R\$)',
              ),
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Text(_selectedDate == null
                      ? 'Nenhuma data selecionada!'
                      : 'Data Selecionda: ${DateFormat('dd/MM/y').format(_selectedDate)}'),
                  ElevatedButton(
                    child: Expanded(
                      child: Text(
                        'Selecionar Data',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: _showDatePicker,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor)),
                  onPressed: _submitFrom,
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
