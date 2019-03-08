# 根据滚动条位置设置页面样式

## 方法一：将滚动位置设置至 html 的 data-scroll 属性中

css 属性判断

```css
html:not([data-scroll='0']) {
  body {
    padding-top: 3em;
  }
  header {
    position: fixed;
  }
}
```

js 监听滚动

```js
document.addEventListener('scroll',function(){
  document.data-scroll='position';
});
```

[Demo 原文链接](https://codepen.io/smallpotatocz/pen/KEmMPg)
[Demo 修改后链接]()

## 方法二：解决方法一无法提供不同范围滚动位置

使用 IntersectionObserver 解决问题

[Demo 原文链接](https://codepen.io/smallpotatocz/pen/zbwNjJ)
