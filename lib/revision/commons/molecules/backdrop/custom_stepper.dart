part of flutter_direct;

class CustomStepper extends StatelessWidget {
  final List<StepperStep> steps;

  const CustomStepper({Key key, this.steps}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: steps,
    );
  }
}

class StepperStep extends StatelessWidget {
  final String title;
  final String body;
  final bool selected;
  final int weight;
  final bool isStart;
  final bool isEnd;

  StepperStep(
      {Key key,
      this.title,
      this.body,
      this.selected = false,
      this.weight = 1,
      this.isStart = false,
      this.isEnd = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildStepperCircleVertical(context),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  body,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Widget _buildStepperCircleHorizontal(BuildContext context) {
  //   return LayoutBuilder(
  //     builder: (context, constraint) {
  //       return Stack(
  //         alignment: Alignment.center,
  //         children: [
  //           Align(
  //             alignment: isStart ? Alignment.centerRight : isEnd ? Alignment.centerLeft : Alignment.center,
  //             child: Container(
  //               height: 3.0,
  //               width: isStart || isEnd ? constraint.maxWidth / 2 : constraint.maxWidth,
  //               color: Colors.grey.shade200,
  //             ),
  //           ),
  //           Container(
  //             height: 72.0,
  //             width: 72.0,
  //             child: ClipRRect(
  //               borderRadius: BorderRadius.circular(99.0),
  //               child: Image.asset(
  //                 'assets/loading_home_credit_id.gif',
  //                 fit: BoxFit.contain,
  //               ),
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  Widget _buildStepperCircleVertical(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Stack(
          children: [
            PositionedDirectional(
              start: 47.0,
              top: isStart ? 47 : 0.0,
              bottom: isEnd ? 47 : 0.0,
              child: SizedBox(
                width: 3.0,
                height: 1.0,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 96.0,
              width: 96.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99.0),
                child: Image.asset(
                  'assets/images/female.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
