import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
          4: FlexColumnWidth(1),
        },
        children: [
          TableRow(
            children: [
              TableCell(child: Text('Row 1, Column 1')),
              TableCell(child: Text('Row 1, Column 2')),
              TableCell(child: Text('Row 1, Column 3')),
              TableCell(child: Text('Row 1, Column 4')),
              TableCell(child: Text('Row 1, Column 5')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('Row 2, Column 1')),
              TableCell(child: Text('Row 2, Column 2')),
              TableCell(child: Text('Row 2, Column 3')),
              TableCell(child: Text('Row 2, Column 4')),
              TableCell(child: Text('Row 2, Column 5')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('Row 3, Column 1')),
              TableCell(child: Text('Row 3, Column 2')),
              TableCell(child: Text('Row 3, Column 3')),
              TableCell(child: Text('Row 3, Column 4')),
              TableCell(child: Text('Row 3, Column 5')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('Row 4, Column 1')),
              TableCell(child: Text('Row 4, Column 2')),
              TableCell(child: Text('Row 4, Column 3')),
              TableCell(child: Text('Row 4, Column 4')),
              TableCell(child: Text('Row 4, Column 5')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('Row 5, Column 1')),
              TableCell(child: Text('Row 5, Column 2')),
              TableCell(child: Text('Row 5, Column 3')),
              TableCell(child: Text('Row 5, Column 4')),
              TableCell(child: Text('Row 5, Column 5')),
            ],
          ),
          TableRow(
            children: [
              TableCell(child: Text('Row 6, Column 1')),
              TableCell(child: Text('Row 6, Column 2')),
              TableCell(child: Text('Row 6, Column 3')),
              TableCell(child: Text('Row 6, Column 4')),
              TableCell(child: Text('Row 6, Column 5')),
            ],
          ),
        ],
      ),
    );
  }
}