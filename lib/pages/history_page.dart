import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/form_data.model.dart';
import '../widgets/form_data_card.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Object> historyList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Historia")),
      body: SafeArea(
        child: ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            return DataCard(historyList[index] as Data);
          },
        ),
      ),
    );
  }

  Future getDataList() async {
    var data = await FirebaseFirestore.instance
        .collection("forms")
        .orderBy("created", descending: true)
        .get();
    setState(() {
      historyList = List.from(data.docs.map((doc) => Data.fromSnapshot(doc)));
    });
  }
}
