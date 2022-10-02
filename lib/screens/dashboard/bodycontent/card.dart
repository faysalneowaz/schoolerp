// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:schoolerp/constant.dart';

class Carddasham extends StatefulWidget {
  final String imgurl;
  final String text;
  final String moneytext;
  final Color color;
  final Function onClick;
  Carddasham(
      {Key? key,
      required this.imgurl,
      required this.text,
      required this.moneytext,
      required this.color,
      required this.onClick})
      : super(key: key);

  @override
  State<Carddasham> createState() => _CarddashamState();
}

class _CarddashamState extends State<Carddasham> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onClick(),
      child: Container(
        height: 150,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1.5,
            color: AppConstent.primarycolor,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppConstent.lightgraycolor,
              offset: Offset(
                4.0,
                4.0,
              ),
              blurRadius: 8.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.only(
                  top: 12.0,
                ),
                decoration: BoxDecoration(
                  color: widget.color.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(widget.imgurl),
              ),
              Text(
                widget.moneytext,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                widget.text,
                style: const TextStyle(
                    fontSize: 18, color: AppConstent.lightgraycolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Dash1 extends StatelessWidget {
//   final String imgurl;
//   final String text;
//   final String moneytext;
//   final Color color;
//   final Function onClick;
//   Dash1({
//     Key? key,
//     required this.imgurl,
//     required this.text,
//     required this.moneytext,
//     required this.color,
//     required this.onClick,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => onClick(),
//       child: Container(
//         height: 150,
//         width: 130,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//             width: 1.5,
//             color: AppConstent.primarycolor,
//           ),
//           boxShadow: const [
//             BoxShadow(
//               color: AppConstent.lightgraycolor,
//               offset: Offset(
//                 4.0,
//                 4.0,
//               ),
//               blurRadius: 8.0,
//               spreadRadius: 0.0,
//             ),
//           ],
//         ),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 height: 80,
//                 width: 80,
//                 margin: const EdgeInsets.only(
//                   top: 12.0,
//                 ),
//                 decoration: BoxDecoration(
//                   color: color.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Image.asset(imgurl),
//               ),
//               Text(
//                 moneytext,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               Text(
//                 text,
//                 style: const TextStyle(
//                     fontSize: 18, color: AppConstent.lightgraycolor),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
