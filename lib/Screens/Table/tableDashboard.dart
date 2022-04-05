import 'package:flutter/material.dart';

class TableDashboard extends StatefulWidget {
  @override
  _TableDashboard createState() => _TableDashboard();
}

class _TableDashboard extends State<TableDashboard> {
  var _sortAscending = true;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: (MediaQuery.of(context).size.width),
            height: (MediaQuery.of(context).size.height),
            child: PaginatedDataTable(
              showCheckboxColumn: false,
              showFirstLastButtons: true,
              sortAscending: _sortAscending,
              sortColumnIndex: 1,
              rowsPerPage: 5,
              columns: const [
                DataColumn(label: Text('Year')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Start Date')),
                DataColumn(label: Text('End Date')),
              ],
              source: _DataSource(context),
            ),
          ),
        ),
      ],
    );
  }
}

class _Row {
  _Row(
    this.name,
    this.status,
    this.startDate,
    this.endDate,

  );

  final String name;
  final String status;
  final String startDate;
  final String endDate;


  bool selected = false;
}

class _DataSource extends DataTableSource {
  _DataSource(this.context) {
    _paymentsList(context);
  }

  final BuildContext context;

  int _selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _paymentsList(context).length) return null;
    final row = _paymentsList(context)[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        if (row.selected != value) {
          var value = false;
          _selectedCount += value ? 1 : -1;
          assert(_selectedCount >= 0);
          row.selected = value;
          notifyListeners();
        }
      },
      cells: [
        DataCell(Text(row.name)),
        DataCell(Text(row.status)),
        DataCell(Text(row.startDate)),
        DataCell(Text(row.endDate)),
      ],
    );
  }

  @override
  int get rowCount => _paymentsList(context).length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}

List<_Row> _paymentsList(BuildContext context) {
  try {
    return List.generate(
      4,
      (index) {
        return _Row(
          '',
          '',
          '',
          '',
    
        );
      },
    );
  } catch (e) {
    //if borrowers list is empty
    return List.generate(0, (index) {
      return _Row(
        '',
        '',
        '',
        '',

      );
    });
  }
}

