part of flutter_direct;

class MoleculeGridView extends StatelessWidget {
  final int? crossItemCount;
  final int? generateItem;
  final Widget? item;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onTap;

  MoleculeGridView(
      {this.crossItemCount,
      this.generateItem,
      this.item,
      this.padding,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            padding: padding,
            physics: NeverScrollableScrollPhysics(),
            itemCount: generateItem,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossItemCount!),
            itemBuilder: (context, position) {
              return GestureDetector(
                onTap: onTap,
                child: item);
            }));
  }
}
