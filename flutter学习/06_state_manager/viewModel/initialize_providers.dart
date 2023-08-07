
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


import 'package:helloflutter/05_day/model/userinfo.dart';
import 'package:helloflutter/05_day/viewModel/counter_view_model.dart';
import 'package:helloflutter/05_day/viewModel/userinfo_view_model.dart';


List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx)=>CounterViewModel()),
  ChangeNotifierProvider(create: (ctx)=>UserInfoViewModel(UserInfo('why',21))),
];