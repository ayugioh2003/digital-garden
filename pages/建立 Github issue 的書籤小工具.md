type:: #Note
tags:: #Github
note::

- ## Introduction
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
	- [javascript window.open()和#符号 | 经验摘录](https://qa.1r1g.com/sf/ask/16378561/?lastactivity)
	- [encodeURIComponent() - JavaScript | MDN](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent)
	- [談談encodeURI和encodeURIComponent以及escape的區別與應用 | 程式前沿](https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/273019/)