type:: #Note 
tags:: #Vue 
note::

- setup, props, context
	- ref
- methods
- computed properties
- the reactive syntax
	- reactive, toRef
- modularizing
	- useFunction hooks
- lifecycle hook
	- vue2 lifecycle methods
		- beforeCreate(), created(), beforeMount(), mounted(), beforeUpdate(), updated(), beforeDestroy(), destroyed()
		- activated(), deactivated(), errorCaptured()
	- vue3
		- beforeDestroy -> beforeUnmount
		- destroyed -> unmounted
		- beforeCreate, created 目前不需要
		- onRenderTracked() 狀態跟蹤 元件內每個值 (dev only)
		- onRenderTriggered() 狀態觸發 當前變動值 (dev only)
- watch
	- watchEffect, watch
	- [Vue3 中 watch 与 watchEffect 有什么区别？ - 知乎](https://www.zhihu.com/question/462378193)
- sharing state
	- custom hook 裡面有狀態，可取出來給元件用
- suspense
	- 讀取資料時可以先用 slot fallback 呈現 loading，之後用 slot default 呈現資料
	- 好像還是實驗功能，可以用了嗎？
	- [Suspense | Vue.js](https://vuejs.org/guide/built-ins/suspense.html#suspense)
- teleport
	- modal 會有 z-index 問題
	- 可控制 #app 以外的 DOM HTML 元素
	- [Teleport | Vue.js](https://vuejs.org/guide/built-ins/teleport.html#teleport)
-
- ## Source
	- [Why the Composition API - Vue 3 Composition API | Vue Mastery](https://www.vuemastery.com/courses/vue-3-essentials/why-the-composition-api/)