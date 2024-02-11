// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:get/get.dart';
// import 'package:note_app/screen/Feedback/Feedback_controller.dart';
// import 'package:rounded_loading_button/rounded_loading_button.dart';
//
// // ignore: non_constant_identifier_names
// Widget FeedbackNoteapp(BuildContext context){
//   return GetBuilder<Feedbackcontroller>(
//     builder: (controller) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feedback'),
//         leading: IconButton(
//           onPressed: (){
//             controller.Feeddbackdailog(context);
//             //Get.back();
//           },
//           icon:  const Icon(Icons.arrow_back_ios_new),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 10,),
//           RatingBar.builder(
//             initialRating: 0,
//             minRating: 1,
//             direction: Axis.horizontal,
//             allowHalfRating: true,
//             itemCount: 5,
//             itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
//             itemBuilder: (context, _) => const Icon(
//               Icons.star,
//               color: Colors.indigo,
//             ),
//             onRatingUpdate: (rating) {
//               print(rating);
//             },
//           ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 children: [
//                   TextField(
//                     maxLines: 15,
//                     controller: controller.feedback,
//                     decoration: const InputDecoration(
//                         hintText: "Start typing", border: OutlineInputBorder()),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 15,),
//             RoundedLoadingButton(
//               // ignore: sort_child_properties_last
//               child: const Text('Feedback', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
//               color: Colors.indigo,
//               onPressed: () {
//                 controller.feedbackdata();
//               },
//               controller: RoundedLoadingButtonController(),
//             ),
//           ],
//         ),
//       ),
//     );
//     },
//   );
// }