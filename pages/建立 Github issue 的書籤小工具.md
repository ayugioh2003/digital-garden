type:: #Note
tags:: #Github, #JavaScript 
note::

- ## Introduction
	- 平常會用 Github Issue 當作簡易的技術部落格。在新建立 Issue 時，想自動填入分享的網址標題與網址，於是開始找解決方案
- ## Method
	- ```js
	  javascript:(function createGithubIssue () {
	      var url = 'https://github.com/ayugioh2003/today-i-learned/issues/new';
	      var h2 = '##';
	      var newline = '\n\n';
	      var site = `${h2} 網址${newline}- ${location.href} ${newline}`;
	      var reason = `${h2} 記錄原因 ${newline}`;
	      var concept = `${h2} 觀念 ${newline}`;
	      var learn = `${h2} 學習點 ${newline}`;
	      var reference = `${h2} 相關資料 ${newline}`;
	      var body = `${site}${reason}${concept}${learn}${reference}`;
	      window.open(`${url}?title=${document.title}&body=${encodeURIComponent(body)}`);
	  })()
	  ```
- ## Reference
	- 在 github 上建立 issue
		- [Creating an issue - GitHub Docs](https://docs.github.com/en/enterprise-server@3.1/issues/tracking-your-work-with-issues/creating-an-issue)
	- HTML 轉義符
		- [url - Transmitting newline character "\n" - Stack Overflow](https://stackoverflow.com/questions/3871729/transmitting-newline-character-n)
		- [javascript window.open()和#符号 | 经验摘录](https://qa.1r1g.com/sf/ask/16378561/?lastactivity)
		- [URL Encode and Decode - Online](https://www.urlencoder.org/)
		- [encodeURIComponent() - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent)
		- [談談encodeURI和encodeURIComponent以及escape的區別與應用 | 程式前沿](https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/273019/)
		- [javascript - Should I use encodeURI or encodeURIComponent for encoding URLs? - Stack Overflow](https://stackoverflow.com/questions/4540753/should-i-use-encodeuri-or-encodeuricomponent-for-encoding-urls)
		- [escape,encodeURI,encodeURIComponent有什么区别? - 知乎](https://www.zhihu.com/question/21861899)
		- [JavaScript 常用編碼、解碼 | Summer。桑莫。夏天](https://cythilya.github.io/2020/07/24/encode-decode/)