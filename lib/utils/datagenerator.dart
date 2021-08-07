import 'package:plants_disease_detector/models/slidermodel.dart';


List<TSlider> getSliders() {
  List<TSlider> list = new List<TSlider>();
  TSlider model1 = TSlider();
  model1.title = "Agri-Chain";
  model1.subTitle = "It feels good at the end of the day to know you made a product that other people are going to enjoy.";
  model1.image = "https://www.ibef.org//uploads/blog/India-promising.jpg";
  TSlider model2 = TSlider();
  model2.title = "Agri-Chain";
  model2.subTitle = "The farmer works the soil, The agriculturist works the farmer.";
  model2.image = "https://thecsspoint.com/wp-content/uploads/2020/10/01-8.jpg";
  TSlider model3 = TSlider();
  model3.title = "Agri-Chain";
  model3.subTitle = "Farmers will get fair price for thier agricultural produce.";
  model3.image = "https://ied.eu/wp-content/uploads/2018/05/agriculture-economy.png";

  list.add(model1);
  list.add(model2);
  list.add(model3);

  return list;
}