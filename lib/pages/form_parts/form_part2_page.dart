import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmeri_sovellus/pages/form_parts/form_summary_page.dart';
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
import 'form_part3_page.dart';

class FormPartTwoPage extends StatefulWidget {
  String currentRoom;
  List accountablePeople;
  String date;
  int thingsOk1;
  int thingsNotOk1;
  List problemCardsPartOne;
  List problemsPartOne;
  List accountablePeoplePartOne;
  List urgenciesPartOne;
  List imgUrlsPartOne;

  FormPartTwoPage({
    Key? key,
    required this.currentRoom,
    required this.accountablePeople,
    required this.date,
    required this.thingsOk1,
    required this.thingsNotOk1,
    required this.problemCardsPartOne,
    required this.problemsPartOne,
    required this.accountablePeoplePartOne,
    required this.urgenciesPartOne,
    required this.imgUrlsPartOne,
  }) : super(key: key);

  @override
  State<FormPartTwoPage> createState() => _FormPartTwoPageState();
}

class _FormPartTwoPageState extends State<FormPartTwoPage> {
  int thingsOk2 = 0;
  int thingsNotOk2 = 0;
  TextEditingController problemTwoController = TextEditingController();
  List problemsAccountablePeople = [];
  String currentUrgency = "Matala";
  List<String> urgencyValues = ["Matala", "Normaali", "Korkea"];
  File? file;
  int problem2Id = 1;
  final ProblemData _problemData = ProblemData();
  UploadTask? task;
  List problemsPartTwo = [];
  List accountablePeoplePartTwo = [];
  List urgenciesPartTwo = [];
  List imgUrlsProblemsPartTwo = [];
  List<Widget> problemCardsPartTwo = [];

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
        title: const Text("Ergonomia"),
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
                headerText: "2. Fyysinen kuormitus",
                thingsOk: thingsOk2.toString(),
                thingsNotOk: thingsNotOk2.toString(),
                plusThingsOk: plusthingsOkPartTwo,
                minusThingsOk: minusthingsOkPartTwo,
                plusThingsNotOk: plusThingsNotOkPartTwo,
                minusThingsNotOk: minusThingsNotOkPartTwo,
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
                      controller: problemTwoController,
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
                                problemsPartTwo.add(problemTwoController.text);
                                accountablePeoplePartTwo
                                    .add(accountablePeoplePartTwo);
                                urgenciesPartTwo.add(currentUrgency);
                                problemCardsPartTwo.add(
                                  Card(
                                    child: Column(
                                      children: [
                                        Text(
                                            "Poikkeama: ${problemTwoController.text}",
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
                                        Text("Kiireellisyys: $currentUrgency",
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
                        builder: (context) => FormPartThreePage(
                              currentRoom: widget.currentRoom,
                              accountablePeople: widget.accountablePeople,
                              date: widget.date,
                              thingsOk1: widget.thingsOk1,
                              thingsNotOk1: widget.thingsNotOk1,
                              problemCardsPartOne: widget.problemCardsPartOne,
                              problemsPartOne: widget.problemsPartOne,
                              accountablePeoplePartOne:
                                  widget.accountablePeople,
                              urgenciesPartOne: widget.urgenciesPartOne,
                              imgUrlsPartOne: widget.imgUrlsPartOne,
                              accountablePeoplePartTwo:
                                  accountablePeoplePartTwo,
                              imgUrlsPartTwo: imgUrlsProblemsPartTwo,
                              problemCardsPartTwo: problemCardsPartTwo,
                              problemsPartTwo: problemsPartTwo,
                              thingsNotOk2: thingsNotOk2,
                              thingsOk2: thingsOk2,
                              urgenciesPartTwo: urgenciesPartTwo,
                            )));
              })
            ],
          ),
        ),
      ),
    );
  }

  plusthingsOkPartTwo() {
    setState(() {
      thingsOk2++;
    });
  }

  minusthingsOkPartTwo() {
    if (thingsOk2 > 0) {
      setState(() {
        thingsOk2--;
      });
    }
  }

  plusThingsNotOkPartTwo() {
    setState(() {
      thingsNotOk2++;
    });
  }

  minusThingsNotOkPartTwo() {
    if (thingsNotOk2 > 0) {
      setState(() {
        thingsNotOk2--;
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
    final fileName = "part2problem$problem2Id";
    final destination = "files/$fileName";
    _problemData.problem = problemTwoController.text.trim();
    _problemData.accountablePeople = problemsAccountablePeople;
    _problemData.urgency = currentUrgency;
    _problemData.problemId = problem2Id.toString();
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
      problem2Id++;
      imgUrlsProblemsPartTwo.add(urlDownload);
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