import 'package:flutter/material.dart';

class AddEditTableContentPage extends StatefulWidget {
  @override
  _AddEditTableContentPageState createState() =>
      _AddEditTableContentPageState();
}

class _AddEditTableContentPageState extends State<AddEditTableContentPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _particularsController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _deliveredByController = TextEditingController();
  TextEditingController _receivedByController = TextEditingController();

  Future<bool> _showExitConfirmaitionDialog() async {
    return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Discard Changes?'),
              content: const Text('Are you sure you want to exit?'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('No')),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('Yes'))
              ],
            )));
  }

  @override
  void dispose() {
    _dateController.dispose();
    _particularsController.dispose();
    _quantityController.dispose();
    _descriptionController.dispose();
    _deliveredByController.dispose();
    _receivedByController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add/Edit Table Content'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _dateController,
                decoration: const InputDecoration(labelText: 'Date'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter teh date';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _particularsController,
                decoration: const InputDecoration(labelText: 'Particulars'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Particulars';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(labelText: 'Quantity'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Quantity';
                  }
                  // add additional validation for quantity here
                  return null;
                },
              ),
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(labelText: 'State'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Are the product New or Used';
                  }
                  // add additional validation for quantity here
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Despcription'),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Description';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _deliveredByController,
                decoration: const InputDecoration(labelText: 'Delivered By'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name of the person making delivery';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _receivedByController,
                decoration: const InputDecoration(labelText: 'Received By'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name of the person reveving the delivery';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _quantityController,
                decoration:
                    const InputDecoration(labelText: 'Destination/Site'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the Quantity';
                  }
                  // add additional validation for quantity here
                  return null;
                },
              ),
              const SizedBox(
                height: 32.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    //Form is valid, submit dat
                    //Handle form submission here
                    Navigator.pop(context); // Navigate back to previous screen
                  }
                },
                child: Text('Submit'),
              ),
              const SizedBox(
                height: 32.0,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () async {
                  if (await _showExitConfirmaitionDialog()) {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
