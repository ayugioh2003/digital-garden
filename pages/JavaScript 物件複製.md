type:: Note
tags:: JavaScript
note::

-
- ## Introduction
	- JavaScript 的複製可分成淺層複製跟深層複製
	- 用 obj2 淺層複製 obj1 第二層的物件後，若修改 obj1 第二層物件，obj2 相對應的物件內容會跟著連動（因為是同一個物件）
-
- ## 淺層複製 spread operator
	- ES6+ 支援的原生語法
	- ```js
	  const arr1 = [1, 2, 3]
	  const arr2 = [...arr1]
	  
	  const obj1 = { message: 'hello', status: true }
	  const obj2 = { ...obj1 }
	  ```
-
- ## 深層複製 JSON build-in Object
	- ES5 前就支援的原生語法
	- Example
		- ```js
		  const obj1 = { message: hello world }
		  const obj2 = JSON.parse(JSON.stringify(obj1))
		  ```
-
- ## 深層複製 structuredClone()
	- 目前不是 ES 規範，而是被規範在 HTML Spec 跟 Node.js 17.0 Doc  裡
	- Example
		- ```js
		  const user = {
		    name: "Lachlan Morris",
		    address: { street: "Original Road", city: "Placeshire" },
		  };
		  
		  const clonedUser = structuredClone(user);
		  ```
-
- ##
-
- ## Reference
	- [Deep clone values with structuredClone() - Simon Plenderleith](https://simonplend.com/deep-clone-values-with-structuredclone/?utm_source=ESnextNews.com&utm_medium=Weekly+Newsletter&utm_campaign=2022-03-22)
	- [structuredClone() - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/structuredClone)
	- [`structuredClone()`: deeply copying objects in JavaScript](https://2ality.com/2022/01/structured-clone.html)