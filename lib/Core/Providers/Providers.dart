import 'package:addibuddy/UI/Screens/MainBottomSheetScreen/MainBottomSheetScreenModel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(create: (_) => MainBottomSheetScreenModel()),
];
