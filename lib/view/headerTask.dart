import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session14/view/bottomSheetDelete.dart';
import 'package:session14/viewModel/appViewModel.dart';
class HeaderTask extends StatelessWidget {
  const HeaderTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context,viewModel,child){
      return Container(
        color:Colors.grey[100] ,
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(viewModel.userName)
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: (){
                    viewModel.bottomSheetBuilder(BottomSheetDelete(), context);
                  }, icon: Icon(Icons.delete)
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: (){}, icon: Icon(Icons.settings)
              ),
            )
          ],

        ),
      );

    });
  }
}
