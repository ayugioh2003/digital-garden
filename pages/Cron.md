type:: Note
tags:: 
note::

- ## Introduction
	- 在 unix-like OS 可以用來排程的工具
- ## 使用
	- ```bash
	  # CLI 指令
	  crontab -l # 查看目前排程
	  crontab -e # 編輯排程
	  
	  # cron 檔案
	  # minute hour day_of_month month day_of_week command
	  # 文件格式說明
	  # ┌──分鐘（0 - 59）
	  # │ ┌──小時（0 - 23）
	  # │ │ ┌──日（1 - 31）
	  # │ │ │ ┌─月（1 - 12）
	  # │ │ │ │ ┌─星期（0 - 6，表示从周日到周六）
	  # │ │ │ │ │
	  # * * * * * 被執行的命令
	  
	  # @yearly：每年一次 (1月1日的 00:00)；
	  # @monthly：每月一次 (每月第一天的 00:00)；
	  # @weekly：每週一次 (星期日的 00:00)；
	  # @daily：每天一次 (在 00:00)；
	  # @hourly：每小時一次 (在每小時的開始)。
	  
	  
	  # Download data every night at 7:25 pm
	   25  19   *   *   *    $HOME/bin/get.pl
	  
	  # 8:00 am, on weekdays (Monday through Friday)
	   00  08   *   *   1-5  $HOME/bin/dosomething
	   
	  # every ten minutes
	  */10 0 0 0 0 autoSave.sh
	  
	  # Restart the IRC proxy after each reboot
	  @reboot /usr/bin/dircproxy
	  
	  ```
	-
- ## Reference
	- [Cron (正體中文) - ArchWiki](https://wiki.archlinux.org/title/Cron_(%E6%AD%A3%E9%AB%94%E4%B8%AD%E6%96%87))
	- [Cron job every 10 minutes](https://crontab.guru/every-10-minutes)