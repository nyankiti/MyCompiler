# 低レイヤを知りたい人のためのCコンパイラ作成入門
https://www.sigbus.info/compilerbook
アウトプット

# ccコマンド
C Compilerの略。\\
cc -o 9cc 9cc.c     9cc.cというCファイルをコンパイルして、9ccとうい実行ファイルを作成する\\
-o オプションは出力(output)するファイルに名前をつけている

# makeコマンド
実行されるとカレントディレクトリのMakefileという名前のファイルを読み込んで、そこに書かれているコマンドを実行。

# $$
 直前のコマンドの終了コードが格納される特別な変数
