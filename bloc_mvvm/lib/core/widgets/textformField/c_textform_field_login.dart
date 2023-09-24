// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CTextFormFieldLogin extends StatefulWidget {
//   final TextEditingController? controller;

//   final TextInputType? keyboardType;
//   final String? text;

//   final FormFieldValidator<String>? validator;
//   final ValueChanged<String>? onChanged;
//   final TextInputAction? textInputAction;
//   final bool readOnly;
//   final int? maxLength;
//   final List<TextInputFormatter>? inputFormatters;
//   final Widget? Icon;

//   const CTextFormFieldLogin({
//     Key? key,
//     this.controller,
//     this.keyboardType,
//     this.text,
//     this.validator,
//     this.onChanged,
//     this.textInputAction,
//     this.maxLength,
//     this.inputFormatters,
//     this.Icon,
//     this.readOnly = false,
//   }) : super(key: key);

//   @override
//   State<CTextFormFieldLogin> createState() => _CTextFormFieldLoginState();
// }

// class _CTextFormFieldLoginState extends State<CTextFormFieldLogin> {
//   SignInController homeController = Get.put(SignInController());
//   SettingController settingCon = Get.put(SettingController());

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       autocorrect: false,
//       style: TextStyle(
//           color: homeController.validPassword.value == true ||
//                   settingCon.validPassword.value == true
//               ? Colors.red
//               : Colors.black),
//       validator: widget.validator,
//       controller: widget.controller,
//       keyboardType: TextInputType.emailAddress,
//       cursorColor: Colors.orange,
//       decoration: InputDecoration(
//         contentPadding:
//             EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012),
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.black, width: 5),
//         ),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.black, width: 5),
//         ),
//         hintText: widget.text,
//         hintStyle: TextStyle(
//             color: homeController.validPassword.value == true ||
//                     settingCon.validPassword.value == true
//                 ? Colors.red
//                 : Colors.grey),
//         prefixIcon: Icon(
//           Icons.email_outlined,
//           color: homeController.validPassword.value == true ||
//                   settingCon.validPassword.value == true
//               ? Colors.red
//               : Colors.black,
//           size: MediaQuery.of(context).size.height * 0.03,
//         ),
//         errorBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.red, width: 5),
//         ),
//         focusedErrorBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.red, width: 5),
//         ),
//         errorStyle: const TextStyle(height: 0),
//       ),
//       onChanged: widget.onChanged,
//       readOnly: widget.readOnly,
//     );
//   }
// }


// // 
// // use
// // 

// // CTextFormFieldLogin(
// //       controller: _homeController.emailController,
// //       text: CStr.signup,
// //       validator: (value){
// //         if(ValidationUtils.validateEmail(value)==false){
// //           _homeController.validPassword.value = true;
// //         }else{
// //           _homeController.validPassword.value = false;
// //         }
// //       },
// //     );