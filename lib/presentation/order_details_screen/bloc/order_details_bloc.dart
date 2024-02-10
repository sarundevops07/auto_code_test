import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist_item_model.dart';
import 'package:sarun_s_application1/presentation/order_details_screen/models/order_details_model.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

/// A bloc that manages the state of a OrderDetails according to the event that is dispatched to it.
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  OrderDetailsBloc(OrderDetailsState initialState) : super(initialState) {
    on<OrderDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderDetailsInitialEvent event,
    Emitter<OrderDetailsState> emit,
  ) async {
    emit(state.copyWith(
        orderDetailsModelObj: state.orderDetailsModelObj
            ?.copyWith(productlistItemList: fillProductlistItemList())));
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          image: ImageConstant.imgImageProduct,
          nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami",
          image1: ImageConstant.imgLoveIconPink300,
          price: "299,43",
          one: "1"),
      ProductlistItemModel(
          image: ImageConstant.imgProductImage1,
          nikeAirZoomPegasus: "Nike Air Zoom Pegasus 36 Miami",
          image1: ImageConstant.imgLoveIcon,
          price: "299,43",
          one: "1")
    ];
  }
}
