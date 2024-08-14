import 'package:flutter/material.dart';

class SliversBasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: Icon(Icons.chevron_left),
          title: Text('Fixed Title'),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                ))
          ],
          //pinned: true,
          floating: true,
          expandedHeight: 120.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Basic Slivers'),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text('SliverFixedExtentList SliverChildListDelegate',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100, //uniform height
          delegate: SliverChildListDelegate([
            //when you have fixed number of items with same height
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ]),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text('SliverFixedExtentList SliverChildBuilderDelegate',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100,
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.orange[100 * (index % 9)],
                child: Text('orange $index'),
              );
            },
            childCount: 9,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text('SliverList SliverChildListDelegate',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text('SliverList SliverChildBuilderDelegate',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.orange[100 * (index % 9)],
                child: Text('orange $index'),
              );
            },
            childCount: 9,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid delegate SliverChildListDelegate, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
            ],
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid delegate SliverChildBuilderDelegate, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 30,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid delegate SliverChildListDelegate, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
            ],
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid delegate SliverChildBuilderDelegate, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 30,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid.count(SliverChildList Delegate)  = gridDelegate: SlivergridDelegateWithFixedCrossAxisCount',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
          children: <Widget>[
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'SliverGrid.extend(SliverChildList Delegate)  = gridDelegate: SlivergridDelegateWithMaxCrossAxisExtent',
                style: TextStyle(fontSize: 24)),
          ),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
          children: <Widget>[
            Container(color: Colors.pink),
            Container(color: Colors.indigo),
            Container(color: Colors.orange),
            Container(color: Colors.pink),
            Container(color: Colors.indigo),
            Container(color: Colors.orange),
          ],
        ),
      ],
    );
  }
}
