// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class CTextFormField extends StatefulWidget {
//   final TextEditingController? controller;

//   final TextInputType? keyboardType;
//   final String? text;

//   final FormFieldValidator<String>? validator;
//   final ValueChanged<String>? onChanged;
//   final TextInputAction? textInputAction;
//   final SvgPicture? image;
//   final int? maxLength;
//   final List<TextInputFormatter>? inputFormatters;
//   final Widget? Icon;
//   final TextStyle? textStyle;

//   const CTextFormField({
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
//     this.image,
//     this.textStyle,
//   }) : super(key: key);

//   @override
//   State<CTextFormField> createState() => _CTextFormFieldState();
// }

// class _CTextFormFieldState extends State<CTextFormField> {
//   AddContactController addContactController = Get.put(AddContactController());

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.06,
//       child: TextFormField(
//         inputFormatters: widget.inputFormatters,
//         maxLength: widget.maxLength,
//         textInputAction: widget.textInputAction,
//         validator: widget.validator,
//         controller: widget.controller,
//         keyboardType: TextInputType.name,
//         cursorColor: Colors.orange,
//         style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: MediaQuery.of(context).size.width * 0.05,
//             vertical: MediaQuery.of(context).size.width * 0.024,
//           ),
//           border: InputBorder.none,
//           prefixIcon: widget.Icon,
//           filled: true,
//           fillColor: Colors.white,
//           hintText: widget.text.toString(),
//           hintStyle: widget.textStyle,
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(
//               color: addContactController.lastnameerror.value == false
//                   ? Colors.white
//                   : Colors.red,
//             ),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(
//               color: Colors.white,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: BorderSide(color: Colors.white),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               10,
//             ),
//             borderSide: BorderSide(color: Colors.white),
//           ),
//           errorStyle: TextStyle(height: 0),
//         ),
//         onChanged: (_) {
//           setState(() {
//             addContactController.firstnameerror.value = false;
//             addContactController.lastnameerror.value = false;
//             addContactController.companynameerror.value = false;
//             addContactController.isEdited = true;
//           });
//         },
//       ),
//     );
//   }
// }

// //
// // use
// //

// // CTextFormField(
// //         textStyle: textThemeData(Get.context!).textTheme.headline3?.copyWith(
// //             color: editCardDtailsController.firstnameerror.value == true
// //                 ? red
// //                 : grey),
// //         text: CStr.firstName,
// //         controller: editCardDtailsController.firstnameContoller,
// //         validator: (val) {
// //           if (val!.isEmpty) {
// //             setState(() {
// //               editCardDtailsController.firstnameerror.value = true;
// //             });
// //             return "";
// //           }
// //           editCardDtailsController.firstnameerror.value = false;
// //         },
// //       ),

// class CommonContainer extends StatelessWidget {
//   String? text;
//   BoxDecoration? decoration;
//   GlobalKey? key;
//   String? isRemove;

//   CommonContainer({this.text, this.decoration, this.key, this.isRemove});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.06,
//       width: MediaQuery.of(context).size.width,
//       decoration: decoration,
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 0.05,
//             ),
//             isRemove == "0" || isRemove == null
//                 ? Icon(
//                     Icons.add_circle,
//                     color: Colors.green,
//                     size: MediaQuery.of(context).size.width * 0.049,
//                   )
//                 : Icon(
//                     Icons.remove_circle,
//                     color: Colors.red,
//                     size: MediaQuery.of(context).size.width * 0.049,
//                   ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 0.03,
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                   bottom: MediaQuery.of(context).size.height * 0.005),
//               child: Text(
//                 text.toString(),
//                 style: TextStyle(),
//               ),
//             ),`
//           ],
//         ),
//       ),
//     );
//   }
// }
