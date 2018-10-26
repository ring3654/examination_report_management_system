// Enter → Tab 処理（IEのみ対応）
function EnterToTab( ) {
    // 特定のキーによる動作を抑制（Backspace、F5、Enter）
    $(document).keydown(function(e){
    // Backspaceで戻るのを禁止（文字入力項目では文字の削除のため必要）
    if( e.keyCode == 8 ) {
    switch( e.target.tagName ) {
    case 'INPUT':
    if( e.target.type == 'text' && e.target.readOnly == false ) {
    return true;
    }
    if( e.target.type == 'password' && e.target.readOnly == false ) {
    return true;
    }
    break;
    case 'TEXTAREA':
    if( e.target.readOnly == false ) {
    return true;
    }
    break;
    }
    return false;
    }
    // F5禁止
    if(e.keyCode == 116) {
    // IE対応
    if(document.all) {
    window.event.keyCode = 0;
    }
    // 動作キャンセル
    return false;
    }
    // Enterキーでのサブミット抑制（IEの場合はTabキーとして処理）
    if(e.keyCode == 13) {
    // ボタン項目の場合は有効にする
    switch( e.target.tagName ) {
    case 'INPUT':// フォーカスボタンのクリックとして動作
    if( e.target.type == 'button' ) {
    return true;
    }
    if( e.target.type == 'image' ) {
    return true;
    }
    if( e.target.type == 'submit' ) {
    return true;
    }
    break;
    case 'BUTTON':// フォーカスボタンのクリックとして動作
    return true;
    break;
    case 'TEXTAREA':// 改行を有効にする
    if( e.target.readOnly == false ) {
    return true;
    }
    break;
    }
    // IE対応（Tabキーとして動作させる）
    if(document.all) {
    window.event.keyCode = 9;
    return true;
    }
    // 動作キャンセル
    return false;
    }
    return true;
    });
    }
    
    / === html等読込終了時実行(画像等のload前) === /
    $(document).ready(function(){
    / EnterキーとTabキーの動作を同じにする。 /
    EnterToTab();
    });