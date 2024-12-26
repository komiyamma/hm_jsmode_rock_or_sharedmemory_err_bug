rem このバッチファイルのディレクトリに
pushd "%~dp0"

rem timeout /t 1 /nobreak >nul
call HmWmClose.exe

rem 常駐含め、全部全強制終了。
rem taskkill /f /im hidemaru.exe

rem (2) 常駐hidemaruが強制終了されてから、1秒以内に何か共用メモリ関連の解放が行われる？
rem それを確実に実行させるためには、1秒なのか2秒なのか待機する必要があるっぽい。
rem 次の行を rem でコメントアウトしてしまうとほぼ確実に共用メモリエラーが発生する。
rem timeout /t 1 /nobreak >nul

rem 秀丸のディレクトリに
pushd "%~1"
start hidemaru.exe /x"%~2" /a"show_release_note"