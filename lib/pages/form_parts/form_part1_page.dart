import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/pages/form_parts/form_summary_page.dart';
import 'package:elmeri_sovellus/pages/instructions/energia1.dart';
import 'package:elmeri_sovellus/widgets/form_card_widget.dart';
import 'package:elmeri_sovellus/widgets/next_button.dart';
import 'package:elmeri_sovellus/widgets/problem_card_problems_widget.dart';
import 'package:elmeri_sovellus/widgets/save_problem_button_widget.dart';
import 'package:elmeri_sovellus/widgets/select_image_button_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../../api/firebase_file_api.dart';
import '../../models/problem_data_model.dart';
import '../instructions/instructions_page.dart';
import 'form_part2_page.dart';

class FormPartOnePage extends StatefulWidget {
  List accountablePeople;
  String currentRoom;
  String date;

  FormPartOnePage({
    Key? key,
    required this.accountablePeople,
    required this.currentRoom,
    required this.date,
  }) : super(key: key);

  @override
  State<FormPartOnePage> createState() => _FormPartOnePageState();
}

class _FormPartOnePageState extends State<FormPartOnePage> {
  int thingsOk1 = 0;
  int thingsNotOk1 = 0;
  TextEditingController problemOneController = TextEditingController();
  List problemsAccountablePeople = [];
  String currentUrgency = "Matala";
  List<String> urgencyValues = ["Matala", "Normaali", "Korkea"];
  File? file;
  int problem1Id = 1;
  final ProblemData _problemData = ProblemData();
  UploadTask? task;
  List problemsPartOne = [];
  List accountablePeoplePartOne = [];
  List urgenciesPartOne = [];
  List imgUrlsProblemsPartOne = [];
  List<Widget> problemCardsPartOne = [];

  @override
  void initState() {
    super.initState();
    problemsAccountablePeople = widget.accountablePeople;
  }

  @override
  Widget build(BuildContext context) {
    final fileName =
        file != null ? basename(file!.path) : "Tiedostoa ei valittu.";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Työskentely"),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InstructionPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              FormCardWidget(
                headerText: "1. Suojaimet, vaatetus, riskinotto",
                thingsOk: thingsOk1.toString(),
                thingsNotOk: thingsNotOk1.toString(),
                plusThingsOk: plusthingsOk1PartOne,
                minusThingsOk: minusthingsOk1PartOne,
                plusThingsNotOk: plusThingsNotOkPartOne,
                minusThingsNotOk: minusThingsNotOkPartOne,
              ),
              const SizedBox(height: 20),
              Card(
                borderOnForeground: true,
                child: Column(
                  children: [
                    Text("Tila: ${widget.currentRoom}",
                        style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 15),
                    const Text(
                      "Poikkeama:",
                      style: TextStyle(fontSize: 15),
                    ),
                    ProblemCardProblemsWidget(
                      controller: problemOneController,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Vastuutahot:",
                      style: TextStyle(fontSize: 15),
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: problemsAccountablePeople.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          onDismissed: (_) {
                            setState(() {
                              problemsAccountablePeople.removeAt(index);
                            });
                          },
                          background: Container(
                            color: Colors.red,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            alignment: Alignment.centerRight,
                            child:
                                const Icon(Icons.delete, color: Colors.white),
                          ),
                          child: Card(
                            child: ListTile(
                              title: Text(problemsAccountablePeople[index]),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Kiireellisyys:",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButton(
                        value: currentUrgency,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: urgencyValues.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            currentUrgency = newValue!;
                          });
                        },
                      ),
                    ),
                    SelectImageButtonWidget(onPressed: selectImage),
                    Text(
                      fileName,
                      style: const TextStyle(fontSize: 16),
                    ),
                    SaveProblemButtonWidget(
                      onPressed: file != null
                          ? () {
                              saveDataToDatabase();
                              setState(() {
                                problemsPartOne.add(problemOneController.text);
                                accountablePeoplePartOne
                                    .add(accountablePeoplePartOne);
                                urgenciesPartOne.add(currentUrgency);
                                problemCardsPartOne.add(
                                  Card(
                                    child: Column(
                                      children: [
                                        Text(
                                            "Poikkeama: ${problemOneController.text}",
                                            style:
                                                const TextStyle(fontSize: 15)),
                                        const Text("Havainnoitsijat:",
                                            style: TextStyle(fontSize: 15)),
                                        Center(
                                          child: ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              itemCount:
                                                  problemsAccountablePeople
                                                      .length,
                                              itemBuilder: (context, index) {
                                                return Text(
                                                    problemsAccountablePeople[
                                                        index]);
                                              }),
                                        ),
                                        Text("Kiireellisyys: ${currentUrgency}",
                                            style:
                                                const TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            }
                          : () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content:
                                    Text("Poikkeamassa on oltava kuva mukana!"),
                                duration: Duration(milliseconds: 1500),
                              ));
                            },
                    )
                  ],
                ),
              ),
              task != null ? buildUploadStatus(task!) : Container(),
              NextButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FormPartTwoPage(
                              currentRoom: widget.currentRoom,
                              accountablePeople: widget.accountablePeople,
                              date: widget.date,
                              thingsOk1: thingsOk1,
                              thingsNotOk1: thingsNotOk1,
                              problemCardsPartOne: problemCardsPartOne,
                              problemsPartOne: problemsPartOne,
                              accountablePeoplePartOne:
                                  problemsAccountablePeople,
                              urgenciesPartOne: urgenciesPartOne,
                              imgUrlsPartOne: imgUrlsProblemsPartOne,
                            )));
              })
            ],
          ),
        ),
      ),
    );
  }

  plusthingsOk1PartOne() {
    setState(() {
      thingsOk1++;
    });
  }

  minusthingsOk1PartOne() {
    if (thingsOk1 > 0) {
      setState(() {
        thingsOk1--;
      });
    }
  }

  plusThingsNotOkPartOne() {
    setState(() {
      thingsNotOk1++;
    });
  }

  minusThingsNotOkPartOne() {
    if (thingsNotOk1 > 0) {
      setState(() {
        thingsNotOk1--;
      });
    }
  }

  Future selectImage() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;
    setState(() => file = File(path));
  }

  Future saveDataToDatabase() async {
    if (file == null) return;
    final fileName = "part1problem$problem1Id";
    final destination = "files/$fileName";
    _problemData.problem = problemOneController.text.trim();
    _problemData.accountablePeople = problemsAccountablePeople;
    _problemData.urgency = currentUrgency;
    _problemData.problemId = problem1Id.toString();
    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});
    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    // ignore: avoid_print
    print("Download-link: $urlDownload");
    _problemData.urlDownload = urlDownload;
    await FirebaseFirestore.instance
        .collection("problems")
        .add(_problemData.toJson());
    setState(() {
      problem1Id++;
      imgUrlsProblemsPartOne.add(urlDownload);
    });
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);

            return Text(
              "$percentage %",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            return Container();
          }
        },
      );
}
