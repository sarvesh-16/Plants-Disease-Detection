
import 'package:plants_disease_detector/models/slidermodel.dart';
import 'package:plants_disease_detector/utils/datagenerator.dart';

List<TSlider> mSliderList; 

Future<void> getItems() async {
  mSliderList = await getSliders();
}