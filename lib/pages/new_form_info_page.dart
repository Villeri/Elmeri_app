import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/pages/form_parts/form_part1_page.dart';
import 'package:elmeri_sovellus/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewFormInfoPage extends StatefulWidget {
  List accountablePeople;
  NewFormInfoPage({
    Key? key,
    required this.accountablePeople,
  }) : super(key: key);

  @override
  State<NewFormInfoPage> createState() => _NewFormInfoPageState();
}

class _NewFormInfoPageState extends State<NewFormInfoPage> {
  TextEditingController dateController = TextEditingController();

  String currentRoom = "5A102";
  List<String> allRooms = [
    "5A102",
    "5A101",
    "5A103",
    "5B103",
    "5A105",
    "5B120 & 5B122",
    "5B101 & 5B101a"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aloitustiedot"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Havainnoitsijat:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance.collection("users").get(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final List<DocumentSnapshot> documents =
                        snapshot.data!.docs;
                    return ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: documents
                          .map((doc) => Card(
                                child: ListTile(
                                  title: Text(doc["name"]),
                                  subtitle: Text(doc["email"]),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.person_add),
                                    color: Colors.black,
                                    onPressed: () {
                                      if (!widget.accountablePeople
                                          .contains(doc["name"])) {
                                        widget.accountablePeople
                                            .add(doc["name"]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("${doc["name"]} LISÄTTY"),
                                          duration: const Duration(
                                              milliseconds: 1500),
                                        ));
                                      } else {
                                        widget.accountablePeople
                                            .remove(doc["name"]);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("${doc["name"]} POISTETTU"),
                                          duration: const Duration(
                                              milliseconds: 1500),
                                        ));
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ))
                          .toList(),
                    );
                  } else if (snapshot.hasError) {
                    return const Text("ERROR");
                  } else if (!snapshot.hasData) {
                    return const Text("NO DATA.");
                  } else {
                    return const Text("Jotain meni pieleen...");
                  }
                }),
            const SizedBox(height: 15),
            const Text("Valittu:"),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.accountablePeople.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (_) {
                    setState(() {
                      widget.accountablePeople.removeAt(index);
                    });
                  },
                  background: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text(widget.accountablePeople[index]),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text(
              "Päivämäärä:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: dateController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  labelText: "Päivämäärä",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const Text(
              "Tila:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              child: DropdownButton(
                value: currentRoom,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: allRooms.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    currentRoom = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: NextButton(
                onPressed: widget.accountablePeople.isNotEmpty
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormPartOnePage(
                                      accountablePeople:
                                          widget.accountablePeople,
                                      currentRoom: currentRoom,
                                      date: dateController.text,
                                    )));
                      }
                    : () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content:
                              Text("Valitse vähintään yksi havainnoitsija!"),
                          duration: Duration(milliseconds: 1500),
                        ));
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
