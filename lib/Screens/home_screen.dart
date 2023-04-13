import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/pricePoints.dart';
import 'lineChart.dart';
import 'sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Color.fromRGBO(72, 109, 218, 1),
      ),
      drawer: Sidebar(
        selectedItem: 'Dashboard',
        onItemSelected: (item) {
          // Update the selected item
        },
      ),
      body: content(),
    );
  }
  Widget content(){
    return Container(
      child: LineChartWidget(pricePoints),
    );
  }
}