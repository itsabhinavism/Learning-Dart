class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Clock Widget'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: Container(
              width: 400,
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Current Time --> ',
                            style: TextStyle(
                                fontSize: 25, color: Colors.lightGreen),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      '${time.hour}hr ${time.minute}min ${time.second}s',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text("Refresh"))
                  ])),
        ));
  }
}
