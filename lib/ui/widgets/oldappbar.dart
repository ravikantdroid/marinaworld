// // ignore_for_file: use_build_context_synchronously

// // import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:marina_mall/ui/widgets/common.dart';

// import '../../core/constants/colors.dart';
// import '../../core/state.dart';
// import '../../core/theme/appstyle.dart';
// import '../../core/ui_core.dart';
// import '../screens/home/about/about_menu.dart';

// final menuOpenStateProvider = StateProvider.autoDispose((ref) => false);

// class TopBarSearch extends StatelessWidget {
//   final String path;
//   final double? topBarHeight;
//   final Widget? otherView;
//   // final int showBack;
//   final int index;
//   const TopBarSearch({
//     Key? key,
//     required this.path,
//     this.otherView,
//     this.topBarHeight,
//     required this.index,
//     // this.showBack = true
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: topBarHeight ?? 35.h,
//           // child: Image(imageUrl: imageUrl),
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: getFallbackImageProvider(path), fit: BoxFit.cover),
//           ),
//         ),
//         Column(
//           children: [
//             SizedBox(
//                 width: double.infinity,
//                 height: 35.h * 0.95,
//                 child: _topSearchBar(context)
//                 // Opacity(
//                 //     opacity: index != 0 ? 1 : 0, child: _topSearchBar(context)),
//                 ),
//             Container(
//               width: 100.w,
//               height: ((topBarHeight ?? 35.h) - 35.h) + 3.h,
//               padding: EdgeInsets.only(top: 2.h),
//               decoration: BoxDecoration(
//                 color: AppColors.backgroundColor,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 4,
//                     offset: const Offset(0, -5),
//                     color: Colors.black.withAlpha(0x0D),
//                   ),
//                 ],
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(5.w),
//                   topRight: Radius.circular(5.w),
//                 ),
//               ),
//             )
//           ],
//         ),
//         if (otherView != null) otherView!
//       ],
//     );
//   }

//   Widget _topContent() {
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         SizedBox(
//           height: 6.h,
//         ),
//         Container(
//           width: 85.w,
//           height: 6.h,
//           padding: EdgeInsets.all(3.w),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(
//               Radius.circular(8.0),
//             ),
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               const Icon(Icons.menu),
//               SizedBox(
//                 width: 3.w,
//               ),
//               Image(
//                 width: 16.w,
//                 image: const AssetImage('assets/images/search_logo.png'),
//                 fit: BoxFit.fitWidth,
//               ),
//               const Spacer(),
//               SvgPicture.asset(
//                 'assets/svg/search.svg',
//                 width: 6.w,
//                 fit: BoxFit.fitWidth,
//               ),
//               SizedBox(
//                 width: 1.w,
//               ),
//             ],
//           ),
//         ),
//         const Spacer(),
//         Text(
//           S.current.home_welcome.toUpperCase(),
//           style: normalTextStyle.copyWith(
//             color: Colors.white,
//             fontSize: 14,
//             fontWeight: FontWeight.w300,
//           ),
//         ),
//         // SizedBox(
//         //   height: 0.2.h,
//         // ),
//         Text(
//           S.current.home_mall.toUpperCase(),
//           style: normalTextStyle.copyWith(
//             color: Colors.white,
//             fontWeight: FontWeight.w400,
//             fontSize: 44,
//           ),
//         ),
//         SizedBox(
//           height: 1.h,
//         ),
//       ],
//     );
//   }

//   _showMenu(BuildContext context, WidgetRef ref) async {
//     // final NavigatorState navigator = Navigator.of(context, rootNavigator: true);

//     // AnimationController controller =AnimationController(vsync: navigator);
//     // AnimationController controller = AnimationController(
//     //     duration: const Duration(milliseconds: 500), vsync: navigator);
//     // Animation<int> alpha = IntTween(begin: 0, end: 255).animate(controller);
//     // Animation duration for displaying the BottomSheet
//     // controller.duration = const Duration(seconds: 1);

//     // Animation duration for retracting the BottomSheet
//     // controller.reverseDuration = const Duration(seconds: 1);
//     // Set animation curve duration for the BottomSheet
//     // controller.drive(CurveTween(curve: Curves.easeIn));
// // final done =
//     final result = await showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.transparent,
//       enableDrag: false,
//       isScrollControlled: true,
//       // transitionAnimationController: controller,
//       constraints: BoxConstraints(minHeight: 65.h, maxHeight: 85.h),
//       // barrierColor: Colors.white38,
//       barrierColor: Colors.transparent,
//       builder: (context) {
//         return const AboutMenu();
//       },
//     );
//     ref.read(menuOpenStateProvider.notifier).state = false;
//     if (result == true) {}
//     // showDialog(
//     //   context: context,
//     //   useSafeArea: true,
//     //   barrierDismissible: true,
//     //   builder: (context) {
//     //     return const AboutMenu();
//     //   },
//     // );
//   }

//   Widget _topSearchBar(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       elevation: 4.0,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           SizedBox(height: 6.h),
//           Container(
//             width: 85.w,
//             height: 6.h,
//             padding: EdgeInsets.all(3.w),
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(8.0),
//               ),
//             ),
//             child: Consumer(
//               builder: (context, ref, child) {
//                 final menuVisible = ref.watch(menuOpenStateProvider);
//                 return Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     if (!menuVisible && index != 0)
//                       InkWell(
//                         onTap: () => Navigator.pop(context),
//                         child: const Icon(
//                           Icons.chevron_left,
//                           color: Color(0xFF5E5E5E),
//                         ),
//                       ),
//                     if (!menuVisible)
//                       InkWell(
//                         onTap: (() {
//                           ref.read(menuOpenStateProvider.notifier).state = true;
//                           _showMenu(context, ref);
//                         }),
//                         child: const Icon(Icons.menu, color: Color(0xFF5E5E5E)),
//                       ),
//                     if (menuVisible)
//                       InkWell(
//                         onTap: () {
//                           ref.read(menuOpenStateProvider.notifier).state =
//                               false;
//                         },
//                         child: const Icon(
//                           Icons.close,
//                           color: Color(0xFF5E5E5E),
//                         ),
//                       ),
//                     SizedBox(
//                       width: 3.w,
//                     ),
//                     Image(
//                       height: 6.w,
//                       image: const AssetImage('assets/images/search_logo.png'),
//                       fit: BoxFit.fitHeight,
//                     ),
//                     const Spacer(),
//                     SvgPicture.asset(
//                       'assets/svg/search.svg',
//                       height: 6.w,
//                       fit: BoxFit.fitHeight,
//                     ),
//                     SizedBox(
//                       width: 1.w,
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           const Spacer(),
//         ],
//       ),
//     );
//   }
// }
