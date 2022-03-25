type:: #Note
tags:: JavaScript, Vue, Node.js, Vite
note::

-
- ## Introduction
	- 因為用 Vue CLI 開專案後，有方便的 `@` alias 代表 `/src` 路徑，讓我被寵壞了。最近在重 Node.js 後端概念時，因為沒有 alias 方案，導致需要用相對路徑去讀取檔案。因此就想整理如何在 JavaScript 專案中使用 path alias 的方法
-
- ## Method
	- ### Node.js
		- ```js
		  // package.json
		  
		  {
		    "imports": {
		      "#src/*": "./*.js" // Or `./*.ts` if using TypeScript
		    }
		  }
		  
		  // main.js
		  import someFunction from '#src/someJSFile'
		  ```
	- ### Vite
		- ```js
		  // vite.config.js
		  
		  export default {
		    resolve: {
		      alias: {
		       "#root": __dirname,
		      }
		    }
		  }
		  
		  ```
- ## Reference
	- [Paths Aliases | vite-plugin-ssr](https://vite-plugin-ssr.com/path-aliases#node-js)
	- [Support Node Package Subpath Pattern Imports · Issue #44848 · microsoft/TypeScript](https://github.com/microsoft/TypeScript/issues/44848)
	- [Modules: Packages | Node.js v17.7.2 Documentation](https://nodejs.org/api/packages.html#subpath-imports)
	- [node.js - How to have path alias in nodejs? - Stack Overflow](https://stackoverflow.com/questions/33214780/how-to-have-path-alias-in-nodejs)