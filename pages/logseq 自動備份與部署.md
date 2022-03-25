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
	- 看到隔壁棚 Obsidian 有內建 git 同步很是羨慕，就開始想說自己動手做個 git 同步功能好了。主要參考這篇：
		- [本地文件自动同步到GitHub - 云+社区 - 腾讯云](https://cloud.tencent.com/developer/article/1575314)
		- [Logseq 本地端使用 Github 同步_answer_is_42的博客-CSDN博客](https://blog.csdn.net/answer_is_42/article/details/121524714)
	- ```bash
	  # logseqAutoSave.sh
	  #!/bin/bash
	  cd /Volumes/GoogleDrive/My\ Drive/logseq
	  
	  git pull
	  git add .
	  git commit -m "auto save"
	  git push -u origin main
	  
	  # cron
	  # crontab -e
	  # 10 分鐘執行一次
	  10 * * * * /Users/username/Documents/cron/logseqAutoSave.sh > ~/logseq_autosave_log.txt 2>&1 &
	  
	  # 常用指令
	  crontab -e # 編輯定期 task
	  crontab -l # 查看定期 task
	  ```
	- 問題與資料
		- cron
			- [Cron - 維基百科，自由的百科全書](https://zh.wikipedia.org/wiki/Cron)
		- mac 路徑空白要用反斜線
			- [shell - How to input a path with a white space? - Stack Overflow](https://stackoverflow.com/questions/12902227/how-to-input-a-path-with-a-white-space)
		- cron Operation not permitted
			- 要用 `chmod 777 filename` 給執行權限
			- google drive volumn 沒辦法給執行權限，bash 檔要放在其他地方
			- [linux - chmod: changing permissions of ‘my_script.sh’: Operation not permitted - Stack Overflow](https://stackoverflow.com/questions/38676437/chmod-changing-permissions-of-my-script-sh-operation-not-permitted)
			- [[Mac] macOS Catalina 上的 cron job 遇到 Operation not permitted 錯誤 | EPH 的程式日記](https://ephrain.net/mac-macos-catalina-%E4%B8%8A%E7%9A%84-cron-job-%E9%81%87%E5%88%B0-operation-not-permitted-%E9%8C%AF%E8%AA%A4/)
		- 也許研究一下 windows 底下有沒有辦法也用 cron 排程？
	- ## 部署到 github pages
		- 參考
			- [Logseq 第一次试用记录以及发布 Logseq 到网页 | Verne in GitHub](https://blog.einverne.info/post/2022/01/logseq-usage.html)
			- [pengx17/logseq-publish: Logseq Publish Action](https://github.com/pengx17/logseq-publish)
			- [Environment variables - GitHub Docs](https://docs.github.com/en/actions/learn-github-actions/environment-variables)
		- 成果
			- [Home](https://ayugioh2003.github.io/digital-garden/#/page/home)
- ## Reference