import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutterapp/Screens/home_screen.dart';
import 'package:flutterapp/Screens/pricePoints.dart';
import 'lineChart.dart';
import 'sidebar.dart';

class PatientRegi extends StatelessWidget {
  final List<charts.Series<MonthData, String>> seriesList;
  final bool animate;

  PatientRegi({required this.seriesList, required this.animate});

  factory PatientRegi.withSampleData() {
    return PatientRegi(
      seriesList: _createSampleData(),
      animate: true,
    );
  }

  static List<charts.Series<MonthData, String>> _createSampleData() {
    final data = [
      MonthData('Jan', 50),
      MonthData('Feb', 75),
      MonthData('Mar', 100),
      MonthData('Apr', 60),
      MonthData('May', 80),
      MonthData('Jun', 120),
      MonthData('Jul', 90),
    ];

    return [
      charts.Series<MonthData, String>(
        id: 'Patients',
        colorFn: (_, __) => charts.Color.fromHex(code: '#4E73DF'),
        domainFn: (MonthData monthData, _) => monthData.month,
        measureFn: (MonthData monthData, _) => monthData.count,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(72, 109, 218, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        title: Text('Patient Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10.0,),
            Text(
              'Registered Patients',
              style: TextStyle(
                  color: Color.fromRGBO(72, 109, 218, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Center(
                child: SizedBox(
                  height: 600.0,
                  child: charts.BarChart(
                    seriesList,
                    animate: animate,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}

class MonthData {
  final String month;
  final int count;

  MonthData(this.month, this.count);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PatientRegi.withSampleData(),
    );
  }
}
