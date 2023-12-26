import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTabProvider extends ChangeNotifier {
  int? _tabNo;
  setTab(tabnumber) {
    _tabNo = tabnumber;
    notifyListeners();
  }

  getTab() {
    return _tabNo ?? 0;
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
