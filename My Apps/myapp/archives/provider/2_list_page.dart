import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_map_provider.dart';

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
                    );
                  })
              : Center(
                  child: Text('No Contact yet!!'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ListMapProvider>().addData({
            "name": "Contact Name",
            "mobNo": "9835304938",
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
