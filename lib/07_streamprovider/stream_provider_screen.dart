
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practicas_riverpod/07_streamprovider/stream_providers.dart';


class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: StreamDeNombres(),
    );
  }
}

class StreamDeNombres extends ConsumerWidget {
  const StreamDeNombres({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamDeNombres = ref.watch(streamProvider);
    if (!streamDeNombres.hasValue) { 
      return Center(
        child: CircularProgressIndicator());}
    return ListView.builder(
      itemCount: streamDeNombres.value!.length,
      itemBuilder:(context, indice) {
        final nombreEnStreamEnEseMomento = streamDeNombres.value![indice];
        return ListTile(
          title: Text(nombreEnStreamEnEseMomento),
        );
      },
    );

  
  }
}

//     final streamDeNombres = ref.watch(streamProvider);
//     if (!streamDeNombres.hasValue) { return Center(child:
//       CircularProgressIndicator());}
    

//     return Scaffold(body: Center(
//       child: 
//       ListView.builder(
//       itemCount: streamDeNombres.value!.length,
//       itemBuilder: (BuildContext context, int indice) {
//         final nombreEnStreamEnEseMomento = streamDeNombres.value![indice];
//         return ListTile(title: Text(nombreEnStreamEnEseMomento));
//       })));

      
//   }
// }