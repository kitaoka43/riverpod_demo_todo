# riverpod_demo_todo

riverpodの学習で作成、フォルダ構成を意識しました。

riverpod + Firebase

## フォルダ構成

※lib配下のみ

|lib
| -model  
| -repositry  
| -ui  
|   -screen  
|   -component  
| -view_model  
| -state  

screenとViewModelでは、各画面毎にファイルを作成
Repository, Model, stateではデータの塊ごとにファイルを作成

view_modelでrepositoryの処理をscreenで使いやすいように加工し、
screenでview_model, stateを使用

stateにはProviderを定義

