import 'package:carpoolz_frontend/providers/google_maps_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/google_auto_complete.dart';

class DraggableSheet extends StatelessWidget {
  const DraggableSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.6,
      builder: (ctx, scrollController) => Container(
        color: Colors.grey[850],
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Icon(Icons.maximize),
                  ),
                ),
                GoogleAutoComplete(),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Go"),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
