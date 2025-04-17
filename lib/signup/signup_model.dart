import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  Local state fields for this page.

  List<String> services = ['Motor Repair', 'Car Repair'];
  void addToServices(String item) => services.add(item);
  void removeFromServices(String item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, String item) =>
      services.insert(index, item);
  void updateServicesAtIndex(int index, Function(String) updateFn) =>
      services[index] = updateFn(services[index]);

  bool isConfirmPasswordSame = false;

  List<DocumentReference> vehicles = [];
  void addToVehicles(DocumentReference item) => vehicles.add(item);
  void removeFromVehicles(DocumentReference item) => vehicles.remove(item);
  void removeAtIndexFromVehicles(int index) => vehicles.removeAt(index);
  void insertAtIndexInVehicles(int index, DocumentReference item) =>
      vehicles.insert(index, item);
  void updateVehiclesAtIndex(int index, Function(DocumentReference) updateFn) =>
      vehicles[index] = updateFn(vehicles[index]);

  List<int> servicePrices = [200, 300];
  void addToServicePrices(int item) => servicePrices.add(item);
  void removeFromServicePrices(int item) => servicePrices.remove(item);
  void removeAtIndexFromServicePrices(int index) =>
      servicePrices.removeAt(index);
  void insertAtIndexInServicePrices(int index, int item) =>
      servicePrices.insert(index, item);
  void updateServicePricesAtIndex(int index, Function(int) updateFn) =>
      servicePrices[index] = updateFn(servicePrices[index]);

  List<String> mechanics = ['John Doe'];
  void addToMechanics(String item) => mechanics.add(item);
  void removeFromMechanics(String item) => mechanics.remove(item);
  void removeAtIndexFromMechanics(int index) => mechanics.removeAt(index);
  void insertAtIndexInMechanics(int index, String item) =>
      mechanics.insert(index, item);
  void updateMechanicsAtIndex(int index, Function(String) updateFn) =>
      mechanics[index] = updateFn(mechanics[index]);

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password is required';
    }

    return null;
  }

  // State field(s) for userCategoryDropdown widget.
  int? userCategoryDropdownValue;
  FormFieldController<int>? userCategoryDropdownValueController;
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First Name is required';
    }

    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name is required';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile Number is required';
    }

    if (val.length < 11) {
      return 'Enter valid number format (ex. 09123456789)';
    }
    if (val.length > 11) {
      return 'Enter valid number format (ex. 09123456789)';
    }
    if (!RegExp('^09\\d{9}\$').hasMatch(val)) {
      return 'Enter valid number format (ex. 09123456789)';
    }
    return null;
  }

  // State field(s) for driverLicenseID widget.
  FocusNode? driverLicenseIDFocusNode;
  TextEditingController? driverLicenseIDTextController;
  String? Function(BuildContext, String?)?
      driverLicenseIDTextControllerValidator;
  String? _driverLicenseIDTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Driver\'s License  is required';
    }

    return null;
  }

  // State field(s) for shopName widget.
  FocusNode? shopNameFocusNode;
  TextEditingController? shopNameTextController;
  String? Function(BuildContext, String?)? shopNameTextControllerValidator;
  String? _shopNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Shop Name is required';
    }

    return null;
  }

  // State field(s) for shopNumber widget.
  FocusNode? shopNumberFocusNode;
  TextEditingController? shopNumberTextController;
  String? Function(BuildContext, String?)? shopNumberTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for businessPermitNumber widget.
  FocusNode? businessPermitNumberFocusNode;
  TextEditingController? businessPermitNumberTextController;
  String? Function(BuildContext, String?)?
      businessPermitNumberTextControllerValidator;
  String? _businessPermitNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Shop Name is required';
    }

    return null;
  }

  // State field(s) for serviceToAdd widget.
  FocusNode? serviceToAddFocusNode;
  TextEditingController? serviceToAddTextController;
  String? Function(BuildContext, String?)? serviceToAddTextControllerValidator;
  // State field(s) for servicePriceToAdd widget.
  FocusNode? servicePriceToAddFocusNode;
  TextEditingController? servicePriceToAddTextController;
  String? Function(BuildContext, String?)?
      servicePriceToAddTextControllerValidator;
  // State field(s) for mechanicToAdd widget.
  FocusNode? mechanicToAddFocusNode;
  TextEditingController? mechanicToAddTextController;
  String? Function(BuildContext, String?)? mechanicToAddTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    confirmPasswordVisibility = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    driverLicenseIDTextControllerValidator =
        _driverLicenseIDTextControllerValidator;
    shopNameTextControllerValidator = _shopNameTextControllerValidator;
    businessPermitNumberTextControllerValidator =
        _businessPermitNumberTextControllerValidator;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    driverLicenseIDFocusNode?.dispose();
    driverLicenseIDTextController?.dispose();

    shopNameFocusNode?.dispose();
    shopNameTextController?.dispose();

    shopNumberFocusNode?.dispose();
    shopNumberTextController?.dispose();

    businessPermitNumberFocusNode?.dispose();
    businessPermitNumberTextController?.dispose();

    serviceToAddFocusNode?.dispose();
    serviceToAddTextController?.dispose();

    servicePriceToAddFocusNode?.dispose();
    servicePriceToAddTextController?.dispose();

    mechanicToAddFocusNode?.dispose();
    mechanicToAddTextController?.dispose();
  }
}
