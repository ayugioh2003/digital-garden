type:: Note
tags:: #Logseq 
note::

- ## Introduction
	- 我在前幾天發現 logseq 後，就決定花點時間來研究。發現雖然可以發布成靜態網站，但沒有完整的自動過程。想透過這篇來研究
- ## 同步資料：Google Drive 方案
	- 說到同步資料，我第一個念頭是用 Google Drive。桌機端好解決，Google Drive 本身有提供 Windows 和 Mac 桌機版本。
	- Android 的部分我則用了 Autosync for Google Drive，然後一時腦波弱就買下去惹
	- [Autosync for Google Drive - Google Play 應用程式](https://play.google.com/store/apps/details?id=com.ttxapps.drivesync&hl=zh_TW&gl=US)
- ## 同步資料：git + cron 方案
	- 看到隔壁棚 Obsidian 有內建 git 同步很是羨慕，就開始想說自己動手做個 git 同步功能好了。
	- ```bash
	  # logseqAutoSave.sh
	  
	  ```
	- 問題
		- mac 路徑空白要用反斜線
			- [shell - How to input a path with a white space? - Stack Overflow](https://stackoverflow.com/questions/12902227/how-to-input-a-path-with-a-white-space)
		- cron Operation not permitted
			- 要用 `chmod 777 filename` 給執行權限
			- google drive volumn 沒辦法給執行權限，bash 檔要放在其他地方
			- [linux - chmod: changing permissions of ‘my_script.sh’: Operation not permitted - Stack Overflow](https://stackoverflow.com/questions/38676437/chmod-changing-permissions-of-my-script-sh-operation-not-permitted)
			- [[Mac] macOS Catalina 上的 cron job 遇到 Operation not permitted 錯誤 | EPH 的程式日記](https://ephrain.net/mac-macos-catalina-%E4%B8%8A%E7%9A%84-cron-job-%E9%81%87%E5%88%B0-operation-not-permitted-%E9%8C%AF%E8%AA%A4/)
-
- ## Reference