# At First & install

git clone ${this repository}
. mac_terminal_log/install.sh

# --説明--
install.shは/User/${USER}/.bash_profileにterminallog.shとrotation.shを実行するコマンドを追記し、
terminallog.shとrotation.shを/User/${USER}/.logfiles配下に配置します。

bash起動時にterminallogはログ取得を開始し、rotation.shはログファイルを20世代まで残して古いものは/var/tmp/.logfile_archive/に移動します。

ログは/User/${USER}/.logfiles/terminal内にあります。
