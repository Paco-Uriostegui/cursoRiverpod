// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:practicas_riverpod/07_streamprovider/stream_providers.dart';


// class StreamProviderScreen extends StatelessWidget {
//   const StreamProviderScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stream Provider'),
//       ),
//       body: StreamDeNombres(),
//     );
//   }
// }

// class StreamDeNombres extends ConsumerWidget {
//   const StreamDeNombres({super.key});
  
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final streamDeNombres = ref.watch(streamProvider);

//     return streamDeNombres.when(
//       data: (nombres) {
//         return ListView.builder(
//           itemCount: nombres.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(nombres[index]),
//             );
//           },);
//         }, 
//       error: (e, stack) => Text('$e'),  
//       loading:() => const Center(child: CircularProgressIndicator(),),);
    
//   }
// }