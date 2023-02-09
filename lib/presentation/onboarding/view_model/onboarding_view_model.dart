import 'dart:async';

import 'package:flutter_advanced/domain/model/models.dart';
import 'package:flutter_advanced/presentation/base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  StreamController _streamController = StreamController<SliderViewObject>();

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged(int index) {
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject {
    return throw UnimplementedError();
  }

  @override
  // TODO: implement outputSliderViewObject
  Stream get outputSliderViewObject {
    return throw UnimplementedError();
  }
}

abstract class OnBoardingViewModelInputs {
  void goNext();
  void goPrevious();
  void onPageChanged(int index);
  Sink get inputSliderViewObject;
}

abstract class OnBoardingViewModelOutputs {
  Stream get outputSliderViewObject;
}
