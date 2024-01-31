import 'package:belajar/screens/ticket_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../helpers/size_helper.dart';

class BookingWisataScreen extends StatefulWidget {
  @override
  State<BookingWisataScreen> createState() => _BookingWisataScreenState();
}

class _BookingWisataScreenState extends State<BookingWisataScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();
  TextEditingController qtyController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  String _wisataChoice = "";

  final List<String> wisata = [
    "Ubud - Bali",
    "Nusa Penida - Bali",
    "Pantai Kuta - Bali",
    "Gunung Rinjani - Lombok",
    "Ranca Upas - Bandung"
  ];

  final List kota = ["Bali", "Bali", "Bali", "Lombok", "Bandung"];
  void initState() {
    tanggalController.text = "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4.0,
                  color: Color.fromARGB(255, 249, 249, 249),
                  margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Booking",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              // color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: nameController,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              labelText: "Full Name",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.text_fields),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input your fullname!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              hintText: "Tour List",
                              labelText: "Select Tour",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.tour),
                            ),
                            items: wisata.map((
                              String items,
                            ) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _wisataChoice = newValue!;
                              });
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: qtyController,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Quantity",
                              labelText: "Quantity",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.numbers),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input value of ticket!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                              controller: tanggalController,
                              cursorColor: Colors.blue,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Book Date",
                                labelText: "Book Date",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.calendar_today),
                              ),
                              readOnly: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'input book date!';
                                }
                                return null;
                              },
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime(2023));
                                if (pickedDate != null) {
                                  print(pickedDate);
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(formattedDate);
                                  setState(() {
                                    tanggalController.text = formattedDate;
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              }),
                          SizedBox(height: 18),
                          SizedBox(
                            width: displayWidth(context) * 0.7,
                            height: displayHeight(context) * 0.05,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 33, 10, 135)),
                                  ),
                                ),
                              ),
                              child: Text("Simpan"),
                              onPressed: () {
                                _submit();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _showAlertDialog(context);
      _formKey.currentState!.save();
    }
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Alert'),
        content: const Text('Are You Sure?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              int price = 0;
              String img = "";
              String name = nameController.text;
              String tanggal = tanggalController.text;
              String qty = qtyController.text;
              String tour = _wisataChoice;
              if (tour == "Ubud - Bali") {
                price = 60000;
                img = "assets/images/ubud.jpg";
              } else if (tour == "Nusa Penida - Bali") {
                price = 750000;
                img = "assets/images/nusapenida.jpg";
              } else if (tour == "Pantai Kuta - Bali") {
                price = 50000;
                img = "assets/images/kuta.jpg";
              } else if (tour == "Gunung Rinjani - Lombok") {
                price = 250000;
                img = "assets/images/rinjani.jpg";
              } else if (tour == "Ranca Upas - Bandung") {
                price = 44000;
                img = "assets/images/rancaupas.jpg";
              }
              int totalPrice = price * int.parse(qty);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TicketScreen(
                    name: name,
                    tour: tour,
                    qty: qty,
                    tanggal: tanggal,
                    price: price.toString(),
                    totalPrice: totalPrice.toString(),
                    img: img,
                  ),
                ),
              );
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
