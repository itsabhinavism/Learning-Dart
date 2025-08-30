import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_map_provider.dart';
import 'add_data_page.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Consumer<ListMapProvider>(
        builder: (ctx, provider, __) {
          var allData = provider.getData();
          return allData.isNotEmpty
              ? ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                        title: Text('${allData[index]['name']}'),
                        subtitle: Text('${allData[index]['mobNo']}'),
                        trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      context
                                          .read<ListMapProvider>()
                                          .updateData({
                                        "name": "Updated Contact",
                                        "mobNo": "7835304938",
                                      }, index);
                                    },
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () {
                                      context
                                          .read<ListMapProvider>()
                                          .deleteData(index);
                                    },
                                    icon: Icon(Icons.delete, color: Colors.red))
                              ],
                            )));
                  })
              : Center(
                  child: Text('No Contact yet!!'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddDataPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
