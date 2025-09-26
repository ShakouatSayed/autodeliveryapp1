import 'package:autodeliveryapp1/popup/PopUp.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

class PrioritySetting extends StatefulWidget{
  const PrioritySetting({super.key});
  @override
  State<PrioritySetting> createState() => _PrioritySettingState();
}

class _PrioritySettingState extends State<PrioritySetting>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Settings", onChanged: (){
        Navigator.pop(context);
      }),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),

            // Text
            const Text(
              "Drag to reorder apps (highest first)",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 12),

            // Drag button
            SizedBox(
              height: 300,
              child: ReorderableListView.builder(

                itemCount: rideOptions.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (newIndex > oldIndex) newIndex--;
                    final iteam = rideOptions.removeAt(oldIndex);
                    rideOptions.insert(newIndex, iteam);
                  });
                },
                buildDefaultDragHandles: true,

                itemBuilder: (context, index) {
                  final rider = rideOptions[index];

                  return Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    key: ValueKey(rider),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ReorderableDragStartListener(
                              index: index,
                              child: Icon(
                                Icons.drag_indicator,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 15),

                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Image.asset(rider["imagePath"], fit: BoxFit.contain),
                            ),
                          ],
                        ),
                        title: Text(
                          "${rider["name"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),

            // Save button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Priority Unsaved!")));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PopUp()));
                },
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}