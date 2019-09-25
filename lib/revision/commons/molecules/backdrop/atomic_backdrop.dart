part of flutter_direct;

class AtomicBackdrop extends StatefulWidget {
  final Widget backPanel;
  final Widget frontPanel;
  final String backdropTitle;
  AtomicBackdrop({this.backPanel, this.frontPanel, this.backdropTitle});

  @override
  _AtomicBackdropState createState() => _AtomicBackdropState();
}

class _AtomicBackdropState extends State<AtomicBackdrop>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 100), value: 1.0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          controller.fling(velocity: isPanelVisible ? -1.0 : 1.0);
        },
        child: TwoPanels(
          controller: controller,
          backPanel: widget.backPanel,
          frontPanel: widget.frontPanel,
          backdropTitle: widget.backdropTitle,
        ),
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  final Widget backPanel;
  final Widget frontPanel;
  final String backdropTitle;

  TwoPanels(
      {this.controller, this.backPanel, this.frontPanel, this.backdropTitle});

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  ScrollController _scrollController = ScrollController();

  static const header_height = 60.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 100), value: 1.0);
  }

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final backPanelHeight = height - header_height;
    final frontPanelHeight = -header_height;

    return RelativeRectTween(
            begin: RelativeRect.fromLTRB(
                0.0, MediaQuery.of(context).size.height / 4, 0.0, 0.0),
            end: RelativeRect.fromLTRB(
                0.0, backPanelHeight, 0.0, frontPanelHeight))
        .animate(
            CurvedAnimation(parent: widget.controller, curve: Curves.linear));
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: Center(
              // child: Text(
              //   "Back Panel",
              //   style: TextStyle(fontSize: 24.0, color: Colors.white),
              // ),
              child: widget.backPanel,
            ),
          ),
          PositionedTransition(
            rect: getPanelAnimation(constraints),
            child: Material(
              color: AtomicColor.primaryColor,
              elevation: 12.0,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: AtomicFontGeneral(
                            data: widget.backdropTitle,
                            style: TextStyle(
                                fontFamily: AtomicFont.Campton,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: ListView(
                      controller: _scrollController,
                      children: <Widget>[widget.frontPanel],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
