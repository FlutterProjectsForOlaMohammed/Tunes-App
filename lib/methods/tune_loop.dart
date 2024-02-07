import 'package:tuneapp/Model/Tune_Item.dart';
import 'package:tuneapp/Widgets/Custom_Container_Widget.dart';

List<TuneContainer> tuneLoop(List<TuneItem> tunes) {
  List<TuneContainer> data = [];
  for (int i = 0; i < tunes.length; i++) {
    data.add(TuneContainer(tune: tunes[i]));
  }
  return data;
}
