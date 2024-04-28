import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/tabs/text_trans_tab/widgets/text_trans_tab_widgets.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class TextTransTab extends StatefulWidget{
  const TextTransTab({super.key});

  @override
  _textTransTab createState ()=> _textTransTab();

}

class _textTransTab extends State<TextTransTab>{

  final TextEditingController _firstController = TextEditingController();
  bool _isStreaming = false;
  @override
  void dispose(){
    _firstController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
              Container(
                constraints: const BoxConstraints.expand(height: 400),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.bgGreyColor
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    const Expanded(child: SizedBox()), 
                    const SizedBox(height: 10,),
                    SizedBox(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){
                              setState(() {
                                _isStreaming= !_isStreaming;
                              });
                            }, 
                            child: Text(_isStreaming? 
                            "Stop Streaming": "Start Streaming", style: AppStyles.normalPrimaryColorTxtStyle,))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const TxtTransTop(),
              !_isStreaming? FirstTxt(controller: _firstController):
              const TranslatedTextWidget(
                text: "Collect and analyze market sentiment data from various sources, such as investor surveys, news sentiment analysis, and social media sentiment analysis. Collect and analyze market sentiment data from various sources, such as investor surveys, news sentiment analysis, and social media sentiment analysis.", 
                language: "lusoga")
          ],
        ),
      ), 
    );
  }
}