import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/battery_limit_slider_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_car_after_reservation_widget.dart'
    show AddCarAfterReservationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCarAfterReservationModel
    extends FlutterFlowModel<AddCarAfterReservationWidget> {
  ///  Local state fields for this page.

  DocumentReference? chargingSpot;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vehicleRegistraionPlate widget.
  FocusNode? vehicleRegistraionPlateFocusNode;
  TextEditingController? vehicleRegistraionPlateController;
  String? Function(BuildContext, String?)?
      vehicleRegistraionPlateControllerValidator;
  // Model for batteryLimitSlider component.
  late BatteryLimitSliderModel batteryLimitSliderModel;
  DateTime? datePicked;
  // State field(s) for batterySize widget.
  FocusNode? batterySizeFocusNode;
  TextEditingController? batterySizeController;
  String? Function(BuildContext, String?)? batterySizeControllerValidator;
  // State field(s) for averageConsumption widget.
  FocusNode? averageConsumptionFocusNode;
  TextEditingController? averageConsumptionController;
  String? Function(BuildContext, String?)?
      averageConsumptionControllerValidator;
  // State field(s) for chargePercentage widget.
  FocusNode? chargePercentageFocusNode;
  TextEditingController? chargePercentageController;
  String? Function(BuildContext, String?)? chargePercentageControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CarRecord? outputCar;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    batteryLimitSliderModel =
        createModel(context, () => BatteryLimitSliderModel());
  }

  void dispose() {
    vehicleRegistraionPlateFocusNode?.dispose();
    vehicleRegistraionPlateController?.dispose();

    batteryLimitSliderModel.dispose();
    batterySizeFocusNode?.dispose();
    batterySizeController?.dispose();

    averageConsumptionFocusNode?.dispose();
    averageConsumptionController?.dispose();

    chargePercentageFocusNode?.dispose();
    chargePercentageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}